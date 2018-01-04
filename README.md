# Sparc

SPARC is a global coalition committed to making Open the default for research and education. SPARC empowers people to solve big problems and make new discoveries through the adoption of policies and practices that advance Open Access, Open Data, and Open Education.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites


```
Rails 4.2
Ruby 2.3.0
```

### Installing

```
bundle install
```

## Deployment

```
rails s
```
## Getting Live Data into Test DB
```
heroku pg:backups capture  

curl -o latest.dump 'heroku pg:backups public-url'  

pg_restore --verbose --clean --no-acl --no-owner -h 54.164.65.141 -U postgres -d sparc_development -p 5432 latest.dump

```

## Authors

H&H Digital Agency 


## License

This project is subject to a CC0 waiver 
https://creativecommons.org/publicdomain/zero/1.0/


