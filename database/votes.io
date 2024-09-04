// PgSQL
//
// Replication:
// - master-slave (async)
// - replication factor 2
//
// Sharding:
// - key based by id

Table votes {
  id UUID [pk, not null]
  post_id UUID [not null]
  user_id UUID [not null]
  rating INTEGER [not null]
}

Table votes_outbox{
  id UUID [pk, not null]
  post_id UUID [not null]
  average_rating FLOAT [not null]
  status VARCHAR(10) [not null]
 }
