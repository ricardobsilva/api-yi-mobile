# README

Things that you need to make before use the API:

* To create database
rails `db:create`

* To run migrations
rails `db:migrate`

* To run seed file
rails `db:seed`

* To run tests
`rspec spec/``

* To Start the application
`rails s`

## Entpoints

#GET - `/events` - Get a events list

Body response
```json
[
    {
        "name": "Rock in Rio",
        "description": "Festival de musica idealizado por Roberto Medina",
        "lat": "-22.9035",
        "long": "-43.2096"
    },
    {
        "name": "LolaPalooza",
        "description": "Festival anual de música alternativa",
        "lat": "-23.5489",
        "long": "-46.6388"
    },
    {
        "name": "Carnaval da Bahia 2019",
        "description": "Uma das principais festas da cultura baiana",
        "lat": "-12,9722",
        "long": "-38,5014"
    }
]
```


#GET - `/comments` - Get a comments list

Body response
```json
[
    {
        "text_body": "bla bla bla",
        "user": {
            "id": 4,
            "name": "Jose",
            "email": "jose@gmail.com",
            "password": "123123123",
            "created_at": "2019-02-10T04:29:30.000Z",
            "updated_at": "2019-02-10T04:29:30.000Z"
        },
        "event": {
            "id": 1,
            "name": "Rock in Rio",
            "description": "Festival de musica idealizado por Roberto Medina",
            "lat": "-22.9035",
            "long": "-43.2096",
            "created_at": "2019-02-10T04:29:30.000Z",
            "updated_at": "2019-02-10T04:29:30.000Z"
        }
    }
]
```


#POST - `/comment` - To create a new comment

Body request
```json
{
	"comment":{
		"text_body": "Bla bla bla",
		"user_id": 4,
		"event_id": 1

	}
}
```

Body response
```json
{
    "text_body": "Bla bla bla",
    "user": {
        "id": 4,
        "name": "Jose",
        "email": "jose@gmail.com",
        "password": "123123123",
        "created_at": "2019-02-10T04:29:30.000Z",
        "updated_at": "2019-02-10T04:29:30.000Z"
    },
    "event": {
        "id": 1,
        "name": "Rock in Rio",
        "description": "Festival de musica idealizado por Roberto Medina",
        "lat": "-22.9035",
        "long": "-43.2096",
        "created_at": "2019-02-10T04:29:30.000Z",
        "updated_at": "2019-02-10T04:29:30.000Z"
    }
}
```
