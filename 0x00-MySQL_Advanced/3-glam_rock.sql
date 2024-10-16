-- Script to list all bands with Glam rock as their main style ranked by longevity

SELECT 
    name AS band_name,
    (2022 - formed_year) AS lifespan
FROM 
    metal_bands
WHERE 
    genre = 'Glam rock'
ORDER BY 
    lifespan DESC;
