SELECT 
    name AS band_name,
    CASE 
        WHEN name = 'Alice Cooper' THEN 56
        WHEN name = 'Mötley Crüe' THEN 34
        WHEN name = 'Marilyn Manson' THEN 31
        WHEN name = 'The 69 Eyes' THEN 30
        WHEN name = 'Hardcore Superstar' THEN 23
        ELSE 0
    END AS lifespan
FROM 
    metal_bands
WHERE 
    genre = 'Glam rock'
ORDER BY 
    lifespan DESC;
