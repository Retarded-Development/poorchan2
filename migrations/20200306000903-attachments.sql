-- +migrate Up
create table attachments (
  id serial not null,
  original_filename text,
  url text,
  resolution integer[],
  is_spoilered boolean default false,
  created_at timestamp without time zone default (now() at time zone 'utc'),
  constraint attachments_pk primary key (id)
);
-- +migrate Down
drop table if exists attachments;