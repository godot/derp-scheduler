class ServiceProviderDAO
  constructor: ->
    @db = require('mongoskin').db(process.env.MONGOLAB_URI)
    @collection = @db.collection('serviceProviders')

  all: (req, res)  =>
    @collection.find().toArray (err, data) ->
      console.log '-------------------------------------'
      throw err if err
      console.log data
      res.json(data)

module.exports = ServiceProviderDAO