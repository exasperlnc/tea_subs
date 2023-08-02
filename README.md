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
- Creating a Subscription requires frequency in the request, but not the price (assuming price data can be stored on the backend, for security)
- Extension could be creating an algorithm to calculate price on the back end based on requested frequency and market value of a tea