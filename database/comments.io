//PgSQL

Table comments {
  id UUID [pk, not null]
  text VARCHAR(4000) [not null]
  create_date DATETIME [not null]
  post_id UUID [not null]
  user_id UUID [not null]
}

Table comments_outbox{
 id UUID [pk, not null]
 comment JSON [not null]
 status VARCHAR(10) [not null]
 }
