# copy ticket.sql to ticket db
docker cp ./express-ticket-server/sql/init_sql.sql ticket-postgres:/docker-entrypoint-initdb.d/init_sql.sql
# create tables in ticket db
docker exec -u postgres ticket-postgres psql postgres postgres -f docker-entrypoint-initdb.d/init_sql.sql

# copy ticket.sql to auth db
docker cp ./go-auth-server/sql/init.sql auth-postgres:/docker-entrypoint-initdb.d/init.sql
# create tables in auth db
docker exec -u postgres auth-postgres psql postgres postgres -f docker-entrypoint-initdb.d/init.sql

