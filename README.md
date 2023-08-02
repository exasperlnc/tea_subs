# README

## Setup
- bundle 
- add simplecov to gitignore
- rails db:{drop,create,migrate,seed}

### Thoughts for presentation 
- Realized after creating postman endpoints that the endpoint to 'delete' a subscription should be changed to a patch request
- merged PR too early, PR's are easier to manage when they involve other people and an actual review process.
- made dummy data for testing before it was needed 
- remembered validates_presence_of doesn't like the "false" boolean