# Rails APP for Search in an Knowledge base
This app use a schema for search questions in a knowledge base using Elasticsearch with full text search. The objective is **do not use** directly the main database.
The autocomplete field use async requests calls in a middleware for fetch data about indexed base. The Admin view uses Chart.js to show the three more relevant search.

## Stack
- Ruby on Rails 4.2.6
- Elasticsearch
- PostgreSQL
- Chart.js
- Bootstrap


Author [Joffily Ferreira](https://github.com/joffilyfe)
