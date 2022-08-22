```sql
SELCET *
FROM 질문
WHERE 작성자 = '홍길동';



CREATE TABLE users (
  id INT PRIMARY KEY,
  name TEXT,
  role_id INT
);

INSERT INTO users VALUES
    (1, '관리자', 1),
    (2, '김철수', 2),
    (3, '이영희', 3);

CREATE TABLE role (
    id INT PRIMARY  KEY,
    title TEXT
);

INSERT INTO role VALUES
    (1, 'admin'),
    (2, 'staff'),
    (3, 'student');

CREATE TABLE articles (
    id INT PRIMARY KEY,
    title TEXT,
    content TEXT,
    user_id INT
);

INSER INTO articles VALUES
    (1, '1번글', '111', 1),
    (1, '2번글', '222', 2),
    (1, '3번글', '333', 1),
    (1, '4번글', '444', NULL);  

