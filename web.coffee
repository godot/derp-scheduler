http = require 'http'

http.createServer (req, res) ->
  res.writeHead 200
  res.end 'works like a charm!'
.listen process.env.PORT || 4000
