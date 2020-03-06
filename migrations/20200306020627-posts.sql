-- +migrate Up
alter table posts add column local_id integer default 0;
-- +migrate Down
alter table posts drop column local_id;