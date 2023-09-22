# go-migrate-ch-cluster
Docker-compose for testing golang-migrate migrations and clickhouse cluster (1 shard with 2 replicas)

### settings
- clickhouse/ch01 - for first replica
- clickhouse/ch02 - for second replica
- migrations - sql scripts for migration
### workflow
For run please `docker-compose up -d` from folder with repository files.

For end please `docker-compose down`

For golang-migrate command from CLI please use this sample
`docker run 
-v .\migrations:/migrations 
--network=go-migrate-ch-cluster_default 
migrate/migrate 
-path=/migrations/ 
-database clickhouse://clickhouse-01:9000 drop`
