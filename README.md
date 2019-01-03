# BandersnatchGraphQL
A GraphQL API of the Black Mirror Netflix interactive film Bandersnatch.

![Bandersnatch Book](https://cdn.images.express.co.uk/img/dynamic/20/590x/secondary/Black-Mirror-Bandersnatch-1662501.jpg?r=1545991426915)

To run the server:
```
bundle exec puma
```

http://localhost:9292/graphql
Request body example:
```
{ "query": "{ decisionPoints { id choices { name endingDecisionPoint { description } } } }" }
```
A visualization (if you want to go down the hole):
![Bandersnatch!](graph.jpg)


