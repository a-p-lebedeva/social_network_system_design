//Ceph

Table photos{
  url VARCHAR(255) [pk, not null]
  file FILE [not null]
}

Table temp_photos{
  url VARCHAR(255) [pk, not null]
  file FILE [not null]
}
