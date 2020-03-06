-- +migrate Up
create table posts (
  id serial not null,
  header text,
  body text,
  is_locked boolean default false,
  is_pinned boolean default false,
  is_infinite boolean default false,
  is_banned boolean default false,
  created_at timestamp without time zone default (now() at time zone 'utc'),
  updated_at timestamp without time zone default (now() at time zone 'utc'),
  constraint posts_pk primary key (id)
);
-- +migrate Down
drop table if exists posts;