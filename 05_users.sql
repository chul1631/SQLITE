-- SQLite

-- 테이블 생성
-- 정호,유,40,전라북도,016-7280-2855,370

CREATE TABLE users (
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  age INTERGER NOT NULL,
  country TEXT NOT NULL,
  phone TEXT NOT NULL,
  balance INTEGER NOT NULL
);

-- 데이터를 추가
.mode csv

-- 같은 디렉토리에 있는 users.csv 파일을 users 테이블로
.import users.csv users


-- 쿼리

-- 30세 이상인 사람들
SELECT * FROM users WHERE age >= 30;

-- 30세 이상인 사람들 이름 3명만(LIMIT)

SELECT first_name FROM users WHERE age >= 30 LIMIT 3;

-- 나이가 30이상, 성이 '김' 인 사람의 나이와 이름만 조회

SELECT age,first_name FROM users WHERE age >=30 AND last_name = '김';

-- 30세 이상인 사람들의 숫자

SELECT COUNT(*) FROM users WHERE age >= 30;

-- 전체 중에 가장 적은 나이
SELECT MIN(age) FROM users;

-- '이'씨중에 가장 적은 나이
SELECT MIN(age), first_name FROM users WHERE last_name ='이';

-- 이씨 중에 가장 적은 나이를 가진 사람의 이름과 계좌잔고
SELECT MIN(age), first_name, balance FROM users WHERE last_name = '이';

-- 30살 이상인 사람들의 평균 나이는?
SELECT AVG(age) FROM users WHERE age >= 30; 

-- 계좌 잔액(balance)이 가장 높은 사람과 그 액수는?
SELECT first_name,MAX(balance) FROM users;

-- 지역번호 02인사람
SELECT COUNT(*) FROM users WHERE phone LIKE '02-%';

-- 준으로 끝나는 사람
SELECT COUNT(*) FROM users WHERE first_name LIKE = '%준';

--  users 테이블에서 중간 번호가 5114인사람
SELECT COUNT(*) FROM users WHERE phone LIKE '%-5114-%';

-- 나이 오름차순 상위 10개만
SELECT first_name FROM users ORDER BY age ASC LIMIT 10;

-- 나이 ,성 순으로 오름차순 정렬, 상위 10개

SELECT * FROM users ORDER BY age, last_name LIMIT 10;

-- 계좌 잔액  내림차순 ,성 오름차순

SELECT last_name, first_name, balance FROM users ORDER BY balance DESC, last_name ASC LIMIT 10;