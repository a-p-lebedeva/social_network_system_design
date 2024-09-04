// Ceph
//
// Replication:
// - master-slave (async)
// - replication factor 2
//
// Sharding:
// - key based by url

Table photos{
  url VARCHAR(255) [pk, not null]
  file FILE [not null]
}

Table temp_photos{
  url VARCHAR(255) [pk, not null]
  file FILE [not null]
}
