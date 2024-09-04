// PgSQL
//
// Replication:
// - master-slave (async)
// - replication factor 2
//
// Sharding:
// - key based by comment_id

Table comments {
  id UUID [pk, not null]
  text VARCHAR(1000) [not null]
  create_date DATETIME [not null]
  post_id UUID [not null]
  user_id UUID [not null]
}

Table comments_outbox{
 id UUID [pk, not null]
 comment JSON [not null]
 status VARCHAR(10) [not null]
 }
