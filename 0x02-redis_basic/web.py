#!/usr/bin/env python3
'''A module with tools for request caching and tracking using Redis.

This module provides a decorator to cache HTTP GET request responses
and track the number of times a URL is fetched.
'''

import redis
import requests
from functools import wraps
from typing import Callable

redis_store = redis.Redis()
'''The module-level Redis instance used for caching and tracking.
'''


def data_cacher(method: Callable) -> Callable:
    '''Caches the output of fetched data and tracks the number of requests.

    Args:
        method (Callable): The function to be decorated.

    Returns:
        Callable: The wrapper function that performs caching and tracking.
    '''
    @wraps(method)
    def invoker(url: str) -> str:
        '''The wrapper function for caching the output.

        Args:
            url (str): The URL to fetch data from.

        Returns:
            str: The cached or newly fetched data.
        '''
        redis_store.incr(f'count:{url}')
        result = redis_store.get(f'result:{url}')
        if result:
            return result.decode('utf-8')
        result = method(url)
        redis_store.setex(f'result:{url}', 10, result)
        return result
    return invoker


@data_cacher
def get_page(url: str) -> str:
    '''Returns the content of a URL, caching the response and tracking requests.

    Args:
        url (str): The URL to fetch the content from.

    Returns:
        str: The content of the response from the URL.
    '''
    return requests.get(url).text
