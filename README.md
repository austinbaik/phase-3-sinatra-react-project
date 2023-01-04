# Phase 3 Project - Watch Organizer Application 



###Background 


This repo contains the files required to run the backend databases and APIs for the "Watch Organizer App" (App). 

This repo was created by forking the Flatiron school Phase 3 Sinatra-React project framework repo. It is available here: 
[fork link]: https://github.com/learn-co-curriculum/phase-3-sinatra-react-project/fork


## Frontend

The github repo for the App frontend can be found here: 
https://github.com/austinbaik/phase-3-my-app-frontend

Instructions for starting up the front-end and information regarding its components are available in its README.md file. 

## Getting Started


Run `bundle install` to install the required gems on your machine. 

You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

This repo comes with two Migration files:

`db/migrate/20221221031917_watches.rb`
`db/migrate/20221221031924_brands.rb`

These files create the two tables required to run the application. 

A seeds.rb file `db/seeds.rb` is also included, and will create three Brand objects. 

To create the tables and seed the databases, run the following command: 

```console
$ bundle exec rake db:migrate db:seed 
```

## Models 

There are two models for the backend: 
`app/models/brand.rb`
`app/models/watch.rb`

The associations for these models are defined in their respective files. 


## APIs 

The `app/controllers/application_controller.rb` file has all the necessary API routes defined for the application. 

They define basic fetch and CRUD operations. 


# Fetch Example

Should you wish to use this backend for another application, the API calls can be made in this format: 

```js
fetch("http://localhost:9292/[parameter]")
  .then((r) => r.json())
  .then((data) => console.log(data));
```




