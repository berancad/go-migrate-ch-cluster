CREATE TABLE IF NOT EXISTS Test1 
(
    Id int,
    Field1 varchar(255)
)
ENGINE = ReplicatedMergeTree('/clickhouse/tables/test1',
 '{replica}')
ORDER BY Id;