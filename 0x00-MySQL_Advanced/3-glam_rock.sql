-- List all Glam rock bands ranked by their longevity

-- Select bands with Glam rock style, computing lifespan until 2022
SELECT 
    name AS band_name,
    (CASE 
        WHEN split IS NULL THEN 2022 - formed -- If the band hasn't split, use 2022 as the current year
        ELSE split - formed                  -- If the band has split, use the split year
    END) AS lifespan
FROM
    metal_bands
WHERE
    style = 'Glam rock'
ORDER BY
    lifespan DESC;  -- Rank by lifespan in descending order
