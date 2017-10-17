# Rails5ApiRest

[![Build Status](https://travis-ci.org/Tony133/Rails5ApiRest.svg?branch=master)](https://travis-ci.org/Tony133/Rails5ApiRest)

Simple Example Api Rest with Ruby on Rails 5

## Getting Migrations

```
    $ bin/rails db:migrate RAILS_ENV=development
```

## Getting Fixtures

```
    $ bin/rails db:fixtures:load
```

## Getting with Curl 

```
    $ curl -H 'content-type: application/json' -v -X GET http://localhost:3000/api/books 
    $ curl -H 'content-type: application/json' -v -X GET http://localhost:3000/api/books/:id
    $ curl -H 'content-type: application/json' -v -X POST -d '{"title":"Foo bar","price":"19.99"}' http://localhost:3000/api/books 
    $ curl -H 'content-type: application/json' -v -X PUT -d '{"title":"Foo bar","price":"19.99"}' http://localhost:3000/api/books/:id
    $ curl -H 'content-type: application/json' -v -X DELETE http://localhost:3000/api/books/:id
```

