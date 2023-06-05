/* QUERIES */

3.1.1

SELECT YEAR(reservation_date) AS year,
       MONTH(reservation_date) AS month,
       school_id,
       COUNT(*) AS count
FROM reservation
WHERE YEAR(reservation_date) = 2023 AND MONTH(reservation_date) = 6
GROUP BY YEAR(reservation_date), MONTH(reservation_date), school_id
ORDER BY YEAR(reservation_date), MONTH(reservation_date), school_id;

3.1.2

select c.category , a.name, u.first_name, u.last_name 
from user u 
inner join role l on u.id = l.user_id
inner join reservation r on u.id = r.user_id
inner join book_author ba on r.book_id = ba.book_isbn
inner join author a on a.id = ba.author_id 
inner join book_category bc on bc.book_id = r.book_id
inner join category c on bc.category_id = c.id
where l.role = 2 and c.id = 2;

3.1.3

SELECT u.first_name, u.last_name, r.user_id, COUNT(r.user_id) AS count
FROM user u
INNER JOIN reservation r ON u.id = r.user_id
INNER JOIN role l ON u.id = l.user_id
WHERE l.role = 2
GROUP BY r.user_id;

3.1.4

SELECT a.name
FROM author a
WHERE NOT EXISTS (
  SELECT 1
  FROM book_author ba
  INNER JOIN reservation r ON ba.book_isbn = r.book_id
  WHERE ba.author_id = a.id
);

3.1.5

SELECT b.titleBK, GROUP_CONCAT(DISTINCT a.name) AS author_names, GROUP_CONCAT(DISTINCT c.category) AS categories, b.ISBN
                FROM book b
                LEFT JOIN book_author ba ON b.ISBN = ba.book_isbn
                LEFT JOIN author a ON ba.author_id = a.id
                LEFT JOIN book_category bc ON b.ISBN = bc.book_id
                LEFT JOIN category c ON bc.category_id = c.id
                WHERE 1=1

3.1.6

SELECT bc1.category_id AS category_1_id, c1.category AS category_1, bc2.category_id AS category_2_id, c2.category AS category_2, COUNT(r.book_id) AS reservation_count
    FROM book_category bc1
    INNER JOIN book_category bc2 ON bc1.book_id = bc2.book_id AND bc1.category_id < bc2.category_id
    INNER JOIN reservation r ON bc1.book_id = r.book_id
    INNER JOIN category c1 ON bc1.category_id = c1.id
    INNER JOIN category c2 ON bc2.category_id = c2.id
    GROUP BY bc1.category_id, c1.category, bc2.category_id, c2.category
    ORDER BY reservation_count DESC
    LIMIT 3;

3.1.7
 
SELECT author_id, COUNT(*) AS display_count
FROM book_author
GROUP BY author_id
HAVING COUNT(*) < (
    SELECT COUNT(*) - 4 AS top_count
    FROM book_author
    GROUP BY author_id
    ORDER BY top_count DESC
    LIMIT 1
)
ORDER BY display_count DESC;

3.2.1

SELECT b.titleBK, GROUP_CONCAT(DISTINCT c.category) AS categories, GROUP_CONCAT(DISTINCT a.name) AS authors, SUM(bs.inventory) AS total_inventory
FROM book b
INNER JOIN book_category bc ON b.ISBN = bc.book_id
INNER JOIN category c ON bc.category_id = c.id
INNER JOIN book_author ba ON b.ISBN = ba.book_isbn
INNER JOIN author a ON ba.author_id = a.id
INNER JOIN book_school bs ON b.ISBN = bs.book_id
GROUP BY b.titleBK;

3.2.2

SELECT r.reservation_id, u.first_name, u.last_name, DATEDIFF(CURDATE(), r.expected_date) AS delayed_days
FROM reservation r
JOIN user u ON r.user_id = u.id
WHERE r.return_date IS NULL
  AND CURDATE() > r.expected_date
  order by delayed_days;

  SELECT r.reservation_id, u.first_name, u.last_name, DATEDIFF(CURDATE(), r.expected_date) AS delayed_days
FROM reservation r
JOIN user u ON r.user_id = u.id
WHERE r.return_date IS NULL
  AND CURDATE() > r.expected_date
  order by u.first_name ASC;

  SELECT r.reservation_id, u.first_name, u.last_name, DATEDIFF(CURDATE(), r.expected_date) AS delayed_days
FROM reservation r
JOIN user u ON r.user_id = u.id
WHERE r.return_date IS NULL
  AND CURDATE() > r.expected_date
  order by u.last_name ASC;



3.2.3

SELECT u.first_name, u.last_name, c.category, AVG(r.rating) 
FROM user u
LEFT JOIN ratings r ON u.id = r.user_id
JOIN book_category bc ON r.book_id = bc.book_id
JOIN category c ON bc.category_id = c.id
WHERE u.id = 100
AND c.id = 1
ORDER BY c.category;

3.3.1

titleBK category author
SELECT b.titleBK, GROUP_CONCAT(c.category) AS categories, GROUP_CONCAT(a.name) AS authors
FROM book b
INNER JOIN book_category bc ON b.ISBN = bc.book_id
INNER JOIN category c ON bc.category_id = c.id
INNER JOIN book_author ba ON b.ISBN = ba.book_isbn
INNER JOIN author a ON ba.author_id = a.id
GROUP BY b.titleBK;

SELECT a.name, GROUP_CONCAT(DISTINCT c.category) AS categories, GROUP_CONCAT(DISTINCT b.titleBK) AS books
FROM book b
INNER JOIN book_category bc ON b.ISBN = bc.book_id
INNER JOIN category c ON bc.category_id = c.id
INNER JOIN book_author ba ON b.ISBN = ba.book_isbn
INNER JOIN author a ON ba.author_id = a.id
GROUP BY a.name;

SELECT c.category, a.name, b.titleBK
FROM book b
INNER JOIN book_category bc ON b.ISBN = bc.book_id
INNER JOIN category c ON bc.category_id = c.id
INNER JOIN book_author ba ON b.ISBN = ba.book_isbn
INNER JOIN author a ON ba.author_id = a.id
GROUP BY c.category;

3.3.2

SELECT u.first_name, u.last_name, u.id, GROUP_CONCAT(b.titleBK) AS reserved_books
FROM user u
INNER JOIN reservation r ON u.id = r.user_id
INNER JOIN book b ON r.book_id = b.ISBN
where u.id = 392
GROUP BY u.id;





/*AUTOMATA

DELETE FROM reservation where reservation_status = 0 and DATE_ADD(reservation_date, INTERVAL 7 DAY) <= CURDATE();

UPDATE reservation SET is_delayed = 1 WHERE CURDATE() > expected_date AND return_date IS NULL;
*/

