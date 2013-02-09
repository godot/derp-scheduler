http = require 'http'

http.createServer (req, res) ->
  res.writeHead 200
  res.write 'it is gonna work'
  res.end 'Hello, Word!'
.listen process.env.PORT || 4000
