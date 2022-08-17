-- SQLite
-- classmate라는 이름의 테이블 생성
CREATE TABLE classmates(
  id integer PRIMARY KEY,
  name TEXT
  );

  -- 테이블 목록 조회

.tables

-- 특정 테이블 스키마 조회
.schema classmates

-- 값 추가
INSERT INTO classmates VALUES (1,'조세호');

-- 테이블 조회 
SELECT * FROM classmate;

INSERT INTO classmates VALUES (2, '이동희');

-- 테이블 삭제 
DROP TABLE classmates;
