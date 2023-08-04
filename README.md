<a name="readme-top"></a>
<!-- Table of Contents -->

# Table of Contents

- [Summary](#Summary)
- [Built With](#built-with)
- [Extensions](#extensions)
- [Set up](#set-up)
 - [Endpoint Usage](#Endpoint-Usage)
  - [Create a Subscription](#create-a-subscription)
  - [Cancel a Subscription](#cancel-a-subscription)
  - [Show a Customers Subscriptions](#show-a-customers-subscriptions)
- [Schema](#schema)
- [Contributors](#contributors)


## Summary

This application was built as a Take Home assignment for Turing School of Software and Design. It simulates the backend of an application that would let customers subscribe, unsubscribe, and see their current subscriptions for a renewable tea delivery service. This was built in approximately 4.5 Hours.
</div>

### Built With:
[![ruby][ruby]][ruby-url]
[![rails][rails]][rails-url]
[![postgresql][postgresql]][postgresql-url]

## Extensions

* Get Testing to get coverage to 100%
* More detailed algorithm for calculating price of a subscription
* Change Database to receive JSON requests instead of Params

## Set up
1. Fork this repo
2. Clone the repo to your local machine
3. In your console, run $ rails db:{drop,create,migrate,seed}

### Endpoint Usage:

#### Create a subscription:

* Request: 
```
post 'api/v0/subscriptions?user_id=2&tea_id=2&frequency=7'
```
* Response: 
```
{
    "data": {
        "id": null,
        "type": "subscription",
        "attributes": {
            "tea_id": 2,
            "customer_id": 2,
            "price": "7",
            "frequency": 7,
            "status": true,
            "title": "Tea 7"
        }
    }
}
```

#### Update a Subscription:
* Request: 
``` 
patch 'api/v0/subscriptions?user_id=2&tea_id=2'
```


* Response: 
{
    "data": {
        "id": "1",
        "type": "subscription",
        "attributes": {
            "tea_id": 2,
            "customer_id": 2,
            "price": "1",
            "frequency": 1,
            "status": false,
            "title": "Tea 1"
        }
    }
}

#### Show a Customer's Subscriptions: 

* Request: 
``` 
get '/api/v0/customers?customer_id=1'
```


* Response:
``` 
{
    "data": [
        {
            "id": "1",
            "type": "subscription",
            "attributes": {
                "tea_id": 1,
                "customer_id": 1,
                "price": "1",
                "frequency": 1,
                "status": false,
                "title": "Tea 1"
            }
        },
        {
            "id": "2",
            "type": "subscription",
            "attributes": {
                "tea_id": 2,
                "customer_id": 1,
                "price": "2",
                "frequency": 2,
                "status": false,
                "title": "Tea 2"
            }
        },
        {
            "id": "3",
            "type": "subscription",
            "attributes": {
                "tea_id": 3,
                "customer_id": 1,
                "price": "3",
                "frequency": 3,
                "status": true,
                "title": "Tea 3"
            }
        },
        {
            "id": "4",
            "type": "subscription",
            "attributes": {
                "tea_id": 1,
                "customer_id": 1,
                "price": "1",
                "frequency": 1,
                "status": false,
                "title": "Tea 1"
            }
        },
        {
            "id": "5",
            "type": "subscription",
            "attributes": {
                "tea_id": 4,
                "customer_id": 1,
                "price": "4",
                "frequency": 4,
                "status": true,
                "title": "Tea 1"
            }
        }
    ]
}
```



## Schema

<img src="https://user-images.githubusercontent.com/112587650/258502963-9e9f9566-bfd0-4f76-9f9e-647bc3ed9a09.png" alt="Schema Image" width="90%">


## Contributors
* Logan Cole: [![Linkedin][linkedin]][logan-li-url] [![Github][Github]][logan-gh-url]

<!-- MARKDOWN LINKS & IMAGES -->
<!--  -->
[linkedin]: https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white
[logan-li-url]: https://www.linkedin.com/in/logan-cole-exasper
[ruby]: https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[ruby-url]: https://www.ruby-lang.org/en/
[rails]: https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white
[rails-url]: https://rubyonrails.org/
[postgresql]: https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white/
[postgresql-url]: https://www.postgresql.org/docs/
[heroku-url]: https://devcenter.heroku.com/articles/getting-started-with-rails7
[github]: https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white
[logan-gh-url]: https://github.com/exasperlnc