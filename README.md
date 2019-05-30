![Image of Yaktocat](logo.png)

# Dockerized PHP v5.6.40 Apache v2.4.25 MySQL v5.7.26 Redis v5.0.5

Still working on this.
All necessary comments will be provided at the very end

## Versions
*	PHP v5.6.40
*	Apache v2.4.25
*	MySQL v5.7.26
*	Redis v5.0.5

## Content
Name| Description
------------ | -------------
Dockerfile | As it says, Dockerfile from which image will be build
docker-compose.yml | Main file of the project that builds and links containers
web | Web folder where you need to copy your web project

## Function
```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```
## Modifications
#### Chanage all values in env files including
* @database_name
* @database_user
* @password

### As Kanye West said:
> We're living the future so the present is our past.
