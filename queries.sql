SET SQL_SAFE_UPDATES = 0;
Select *
from banks;

Alter table banks
Add column population BIGINT;

Update banks
set population = 339996563
where Country = 'United States of America';


Update banks
set population = 83294633
where Country = 'Germany';

Update banks
set population = 123294513
where Country = 'Japan';

Update banks
set population = 67736802
where Country = 'United Kingdom';

Update banks
set population = 64756584
where Country = 'France';

Update banks
set population = 47519628
where Country = 'Spain';

Update banks
set population = 8796669
where Country = 'Switzerland';
Update banks
set population = 58870762
where Country = 'Italy';

Update banks
set population = 17618299
where Country = 'Netherlands';
Update banks
set population = 26439111
where Country = 'Australia';
Update banks
set population = 5545475
where Country = 'Finland';
Update banks
set population = 144444359
where Country = 'Russia';
Update banks
set population = 51784059
where Country = 'South Korea';
Update banks
set population = 6014723
where Country = 'Singapore';
Update banks
set population = 5910913
where Country = 'Denmark';
Update banks
set population = 216422446
where Country = 'Brazil';
Update banks
set population = 8958960
where Country = 'Austria';
Update banks
set population = 10612086
where Country = 'Sweden';
Update banks
set population = 5474360
where Country = 'Norway';
Update banks
set population = 2716391
where Country = 'Qatar';
Update banks
set population = 9516871
where Country = 'United Arab Emirates';
Update banks
set population = 38781291
where country = 'Canada';
select population
from banks
where population IS NULL;
select population
from banks
where population IS NOT NULL;

alter table banks
ADD COLUMN BankName VARCHAR(256);


update BANKS
Set BankName = 'Bank Name';

alter table banks
drop column BankName;

SELECT Count(*) AS DistinctCountries
FROM (SELECT DISTINCT Country FROM banks) AS SubqueryAlias;

SELECT *
FROM banks
where Country = 'Canada';
SELECT *
FROM banks
WHERE Country= 'United States of America';

SELECT *
FROM banks
WHERE Country= 'Japan';

SELECT *
FROM banks
WHERE Country= 'United Kingdom';

SELECT *
FROM banks
WHERE Country= 'Spain';

SELECT *
FROM banks
WHERE Country= 'Switzerland';

SELECT *
FROM banks
WHERE Country= 'Japan';

SELECT *
FROM banks
WHERE Country= 'Mexico';

SELECT *
FROM banks
WHERE Country= 'France';

SELECT *
FROM banks
WHERE Country= 'Germany';

SELECT *
FROM banks
WHERE Country= 'Italy';

SELECT *
FROM banks
WHERE Country= 'Netherlands';

SELECT *
FROM banks
WHERE Country= 'Australia';

SELECT *
FROM banks
WHERE Country= 'India';

SELECT *
FROM banks
WHERE Country= 'Finland';

SELECT *
FROM banks
WHERE Country= 'Russia';

SELECT *
FROM banks
WHERE Country= 'South Korea';

SELECT *
FROM banks
WHERE Country= 'Singapore';

SELECT *
FROM banks
WHERE Country= 'Denmark';

SELECT *
FROM banks
WHERE Country= 'Brazil';

SELECT *
FROM banks
WHERE Country= 'Belgium';

SELECT *
FROM banks
WHERE Country= 'Austria';

SELECT *
FROM banks
WHERE Country= 'Sweden';

SELECT *
FROM banks
WHERE Country= 'Norway';

SELECT *
FROM banks
WHERE Country= 'Qatar';

SELECT *
FROM banks
WHERE Country= 'United Arab Emirates';

SELECT AVG(TotalAsset) AS avg_total_assets
FROM banks;

Alter table banks
drop column BankName;

SELECT *
FROM banks
WHERE totalasset > 1000;
SELECT *
FROM banks
WHERE totalasset > 1500;
SELECT *
FROM banks
WHERE totalasset > 2000;
SELECT *
FROM banks
WHERE totalasset > 2500;
SELECT *
FROM banks
WHERE totalasset > 3000;
SELECT *
FROM banks
WHERE totalasset < 500;

SELECT country, SUM(totalasset) AS total_assets
FROM banks
GROUP BY country
ORDER BY total_assets DESC;

SELECT country, SUM(totalasset) AS total_assets
FROM banks
GROUP BY country
ORDER BY total_assets DESC;

SELECT country, SUM(totalasset) AS total_assets
FROM banks
GROUP BY country
ORDER BY total_assets asc;

SELECT 'Rank', country, SUM(TotalAsset) as total_assets
from banks
group by country
order by 'Rank' DESC;

SELECT `Rank`,`Bank name`, country, totalasset
FROM banks
ORDER BY totalasset DESC
LIMIT 5;

SELECT `Rank`, country
FROM banks
ORDER BY totalasset DESC
LIMIT 5;

SELECT country, COUNT(*) AS bank_count
FROM banks
GROUP BY country
ORDER BY bank_count DESC
LIMIT 28;

SELECT `rank`, `Bank name`, TotalAsset
FROM banks
ORDER BY TotalAsset DESC
LIMIT 5;
SELECT `rank`, `Bank name`, population
FROM banks
ORDER BY Country DESC
LIMIT 5;
SELECT  sum(TotalAsset) as total_Asset
from banks;
SELECT  avg(TotalAsset)
from banks;
SELECT country from banks
where `rank` < 11;