-- flats
SELECT o.name Owner, f.price Price, f.rooms Rooms, f.floor Floor, d.name District, fs.Stations FROM flats f
LEFT JOIN districts d ON f.district_id = d.id
LEFT JOIN owners o ON f.owner_id = o.id
LEFT JOIN ( SELECT fs.flat_id, GROUP_CONCAT(s.name) Stations FROM flats_stations fs
            LEFT JOIN stations s on fs.station_id = s.id GROUP BY fs.flat_id) fs ON fs.flat_id = f.id

ORDER BY o.name, f.price

--owners
SELECT o.name Owner, SUM (fo.Price) Flats_SUM, COUNT (fo.Id) AS Flats_COUNT FROM owners o
LEFT JOIN ( SELECT o.id Id, f.price Price, d.name District FROM flats f
            LEFT JOIN districts d on f.district_id = d.id
            LEFT JOIN owners o on f.owner_id = o.id) fo ON o.id = fo.Id
GROUP BY o.id
HAVING COUNT (fo.Id) >0
ORDER BY Flats_SUM DESC, Flats_COUNT DESC