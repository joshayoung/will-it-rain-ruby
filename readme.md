## Weather Program to Send Forecast Data
This repo pulls in the current weather forecast for the week. The email functionality allows you to send the weather data to someone on a periodic basis.

## To see testing coverage report:
 * Start a server at the root of the project (python's SimpleHTTPServer works for this)
 * Navigate to `http://localhost:8000/coverage` in your browser

### Docker

#### Build the image:
`docker build .`

#### Attach to 'irb':
Get this ID from running `docker image ls`
`docker run -it [the id] irb`

#### Run Rspec:
`docker run -it [the id] rspec`