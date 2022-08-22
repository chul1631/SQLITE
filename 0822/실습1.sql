-- INER JOIN

-- A와 B테이블에서  값이 일치하는 것들만

SELECT*
FROM users INNER JOIN role
  ON users.role_id = role.id;

SELECT
  users.name,
  role.title
FROM users INNER JOIN role
  ON users.role_id = role.id;



SELECT
  users.name,
  role.title
FROM users INNER JOIN role
  ON users.role_id = role.id;


-- staff (2) 사용자 (users)를 역할과 함께 출력

-- staff 2만 출력

SELECT *
FROM users INNER JOIN role
  ON users. role_id = role.id
WHERE role.id = 2;

--이름을 내림차순으로 출력

SELECT *
FROM users INNER JOIN role
  ON users.role_id = role.id
ORDER BY users.name DESC;


SELECT *
FROM 테이블1 [LEFT|RIGHT|FULL] OUTER JOIN 테이블2 
    ON 테이블1.칼럼 = 테이블2.칼럼;

--LEFT OUTER JOIN

SELECT *
FROM aritcles LEFT OUTER JOIN users
    ON articles.user_id = users.id;
WHERE articles.user_id IS NOT NULL;


SELECT *
FROM albums
INNER JOIN artists 
    ON albums.ArtistId = artists.ArtistId\



-- 3개의 테입을 조인
SELECT * 
FROM articles
    JOIN users
      ON articles.user_id = users.id
    JOIN role
      ON users.role_id = role.id;