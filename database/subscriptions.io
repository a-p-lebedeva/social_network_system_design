// PgSQL
//
// Replication:
// - master-slave (async)
// - replication factor 2
//
// Sharding:
// - key based by target_id (celebrity_id)

Table subscriptions {
  subscriber_id UUID [not null] 
  target_id UUID [not null] 
  subscription_date DATETIME [not null]
 }

Table celebrities_outbox {
  id UUID [pk, not null]
  celebrity_id UUID [not null] 
  status VARCHAR(10) [not null]
 }

Table subscriptions_outbox {
  id UUID [pk, not null]
  subscriber_id UUID [not null] 
  target_id UUID [not null] 
  status VARCHAR(10) [not null]
 }
