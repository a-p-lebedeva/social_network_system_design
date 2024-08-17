//PgSQL

Table posts {
  id UUID [pk, not null]
  description VARCHAR(4000) [not null] 
  create_date DATETIME [not null]
  user_id UUID [not null]
  location_id UUID [not null]
 }

Table photos {
  id UUID [pk, not null]
  caption VARCHAR(255) [not null] 
  file_path VARCHAR(255) [not null] 
  preiew_path VARCHAR(255) [not null] 
  post_id UUID [not null]
 }

Ref : photos.post_id > posts.id

Table photos_outbox{
  id UUID [pk, not null]
  url VARCHAR(255) [not null]
  status VARCHAR(10) [not null]
 }

Table posts_outbox{
  id UUID [pk, not null]
  post JSON [not null]
  status VARCHAR(10) [not null]
 }
