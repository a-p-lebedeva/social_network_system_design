//PgSQL
//
// Replication:
// - master-slave (async)
// - replication factor 2
//
// Sharding:
// - key based by location_id

Table locations {
  id UUID [pk, not null]
  name VARCHAR(255) [not null] 
  description VARCHAR(4000) 
  latitude FLOAT
  longitude FLOAT
  post_count INTEGER
 }

Table top_locations_outbox{
  id UUID [pk, not null]
  location_id UUID [not null]
  post_count integer
  status VARCHAR(10) [not null]
}

Ref : top_locations_outbox.location_id > locations.id
