ServiceProviderDAO = require './lib/connector'
express            = require 'express'

app = express()

serviceProvider = new ServiceProviderDAO()

display = (err, data) ->
  throw err if err
  console.log data

app.get('/serviceProviders', serviceProvider.all)

app.listen(process.env.PORT)