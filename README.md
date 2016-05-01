# Rails APP for Search in an Knowledge base
This app use a schema for search questions in a knowledge base using Elasticsearch with full text search. The objective is **do not use** directly the main database.
The autocomplete field use async requests calls in a middleware for fetch data about indexed base. The Admin view uses Chart.js to show the three more relevant search.

## Stack
- Ruby on Rails 4.2.6
- Elasticsearch
- PostgreSQL
- Chart.js
- Bootstrap

## Requirements
- Elasticsearch >= 2.3.2
- Ruby 2.3
- Bundle

## How install?
Make sure you have a clone of this repository and run
```bash
bundle install
```
You will need configure a database.yml file, please remember to configure username, database and password.
```bash
cp -r config/database-sample.yml config/database.yml
```
If you are using rbenv, setup it with your password, if not, you can use the the **export** command.
```bash
export HELPJUICE_DATABASE_PASSWORD=your-secret-password
```
Now you need configure your secret base hash and secret token.
```bash
rake secret
export SECRET_KEY_BASE=key-generated-by-rake
rake secret
export SECRET_TOKEN=another-secret-long-hash-by-rake
```

Now you can run the db:create and migrate
```bash
rake db:create
rake db:migrate
rake db:seed
```

We have setup the application with postgres, now we need import the Questions in Elasticsearch.
```bash
bundle exec rake environment elasticsearch:import:model CLASS='Question'
```
Now the autocomplete will work. Not worry about new question, it will run in Elasticsearch automatically.

Author [Joffily Ferreira](https://github.com/joffilyfe)
