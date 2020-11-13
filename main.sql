.header on
.mode column

CREATE TABLE families (
  id INTEGER,
  name string,
  family_size INTEGER
);

INSERT INTO families VALUES
  (1, 'family-1', 5),
  (2, 'family-2', 2),
  (3, 'family-3', 10),
  (4, 'family-4', 1),
  (5, 'family-5', 6),
  (6, 'family-6', 7),
  (7, 'family-7', 8);

CREATE TABLE countries (
  id INTEGER,
  name string,
  tour_size INTEGER
);

INSERT INTO countries VALUES
  (1, 'country-1', 10),
  (2, 'country-2', 4),
  (3, 'country-3', 20),
  (4, 'country-4', 1),
  (5, 'country-5', 6),
  (6, 'country-6', 7),
  (7, 'country-7', 18);

SELECT * FROM families;

SELECT * FROM countries;

SELECT a.name, b.name, count(a.id) AS user_count
  FROM countries b
  LEFT JOIN families a ON a.family_size <= b.tour_size
  GROUP BY a.id;

.print

SELECT a.name, b.name, count(a.id) AS user_count
  FROM families a
  LEFT JOIN countries b
  GROUP BY a.name;

.print

SELECT a.id, a.name, b.name, a.family_size, b.tour_size, count(*) count
FROM families a
LEFT JOIN countries b
on a.family_size <= b.tour_size
GROUP BY a.id
ORDER BY count DESC
LIMIT 1;

SELECT count(*) count
FROM families a
LEFT JOIN countries b
on a.family_size <= b.tour_size
GROUP BY a.id
ORDER BY count DESC
LIMIT 1;

.print

.print
