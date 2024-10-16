-- Script to list all bands with Glam rock as their main style ranked by longevity

SELECT
    name AS band_name,
    (CASE 
        WHEN split IS NULL THEN 2022 - formed_year
        ELSE split - formed_year
    END) AS lifespan
FROM metal_bands
WHERE genre = 'Glam rock'
ORDER BY lifespan DESC;

