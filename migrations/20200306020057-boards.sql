-- +migrate Up
create table boards (
  id serial not null,
  short_name text,
  long_name text,
  info text,
  post_count integer default 0,
  post_limit integer default 0,
  bump_limit integer default 0,
  board_limit integer default 0,
  page_size integer default 0,
  is_global boolean default false,
  is_located boolean default false,
  created_at timestamp without time zone default (now() at time zone 'utc'),
  updated_at timestamp without time zone default (now() at time zone 'utc'),
  constraint boards_pk primary key (id)
);
-- +migrate Down
drop table if exists boards;