SELECT cities.name, countries.name, continents.name 
FROM cities, continents, countries, cities_continet_countries
WHERE cities_continet_countries.country_id = countries.id
AND cities_continet_countries.city_id = cities.id
AND cities_continet_countries.continent_id = continents.id
