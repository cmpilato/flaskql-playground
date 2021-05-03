# flaskql-playground

MongoDB+Flask+Graphene Docker Playground

## Getting Started

After cloning this repository, you'll want to build and tag the Docker
images:

```sh
docker-compose build
```

## Starting the Stack

To start the stack after having already use it in the past, run:

```sh
$ docker-compose up -d
```

Now, visit http://localhost:5000/graphql and find your running
application!

## Stopping the Stack

To stop the stack, run:

```sh
$ docker-compose down
```

## Example Query

Here's a sample query you can use:

```
{
  allEmployees {
    edges {
      node {
        id,
        name,
        department {
          id,
          name
        },
        roles {
          edges {
            node {
              id,
              name
            }
          }
        },
        leader {
          id,
          name
        }
        tasks {
          edges {
            node {
              name,
              deadline
            }
          }
        }
      }
    }
  }
}
```

## Acknowledgements

This began as a Dockerized form of the Graphene Flask example found at
https://github.com/graphql-python/graphene-mongo/.  It required some
minor local modifications to make it run, but let's give credit where
it's due, shall we?
