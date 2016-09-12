SELECT DISTINCT p.planet_id,
(((1 - ISNULL(p.fluff)) / 4) +
((1 - ISNULL(p.factory)) / 8) +
((1 - ISNULL(nt.planet_id)) / 8) +
((16 - ISNULL(p.atm_subtype) - ISNULL(p.surface_gravity) -
ISNULL(p.equatorial_temperature) - ISNULL(p.temperature_subtype) -
ISNULL(p.travel_time) - ISNULL(p.recharging_station) -
ISNULL(p.comstar_facility) - ISNULL(p.population) -
ISNULL(p.socio_industrial_levels) - ISNULL(p.surface_water) -
ISNULL(p.native_life) - ISNULL(p.star_type) - ISNULL(p.planets_in_system) -
ISNULL(p.position) - ISNULL(p.satellites) - ISNULL(p.atm_pressures)) / 16 / 4)
+0.25) / 2 + 0.1 AS infoStat
FROM planet p LEFT JOIN novel_timeline nt ON p.planet_id = nt.planet_id
ORDER BY 2 DESC, 1;
