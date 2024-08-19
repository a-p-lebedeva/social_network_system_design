//PgSQL

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

