# zipper
Microservice on GO for streaming files from Amazon S3 to user.

## How to use.
Place `credentials` file inside `app/aws` folder. Please
read `README.md` file inside that folder.

Run `docker-compose up -d` in the app root folder.

4 containers will be created:
* `zipper` - light version of app (alpine and binary file),
 available by link -`localhost:9992`
* `zipper_go` - not light version of app 
(alpine + go library files), available by link -`localhost:9993` 
* `mariadb` - container with database
* `pma` - container with phpmyadmin, 
 available by link -`localhost:9991`

To start downloading files:
* insert row in `hashes` table, for example:
  1.  `hash` field = `ehJqJ1CRvypsN3X`  
  2.  `expire` field (timestamp in the future) = `1600392272`
  3.  `hash` field  with data:

```
[
  {
    "name":"Image.jpg",
    "path":"folder\/brochures\/Image.jpg",
    "type":"s3"
  },
  {
    "name":"Image2.jpg",
    "path":"folder2\/product\/Image2.jpg",
    "type":"s3"
   },
   {
    "name":"Image3.jpg",
    "path":"folder\/product\/\/Image3.jpg",
    "type":"s3"
   }
]
```
`name` - File name,
`path` - path to the file in Amazon S3.
`type` - leave it = 's3'

* Open link - `http://localhost:9992?r=ehJqJ1CRvypsN3X` 
 or `http://localhost:9993?r=ehJqJ1CRvypsN3X`


### Slides.
https://docs.google.com/presentation/d/1_Berv4Mj9M5H0DzVuauu2FvS7ZW4fbTEYzCyzLcPJ_E/edit?usp=sharing
