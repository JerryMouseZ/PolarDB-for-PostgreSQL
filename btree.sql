-- 创建一个测试表
CREATE TABLE test_btree (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT
);

-- 创建一个B-tree索引
CREATE INDEX idx_test_btree_age ON test_btree USING btree (age);

-- 插入一些测试数据
INSERT INTO test_btree (name, age) VALUES
('Alice', 30),
('Bob', 25),
('Charlie', 35),
('David', 40),
('Eve', 28);

-- 查询测试数据
SELECT * FROM test_btree WHERE age > 30;

-- 查看索引的使用情况
EXPLAIN ANALYZE SELECT * FROM test_btree WHERE age > 30;

-- 删除测试表和索引
DROP INDEX idx_test_btree_age;
DROP TABLE test_btree;

