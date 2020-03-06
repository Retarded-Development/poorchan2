install:
	go get -v github.com/rubenv/sql-migrate/...
	go get github.com/kyleconroy/sqlc
	go get github.com/99designs/gqlgen

create_db:
	echo "CREATE DATABASE poorchan2;" | sudo -u postgres psql 
	echo "CREATE USER poorchan_user WITH password 'password';" | sudo -u postgres psql 
	echo "GRANT ALL ON DATABASE poorchan2 TO poorchan_user;" | sudo -u postgres psql 

migrate:
	sql-migrate up
