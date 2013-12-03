### 
Prefix all variables with `____` to avoid polluting the jade namespace.
###
____jade = require "jade"
____james = require "james"

module.exports = (____options) => 
	if ____options.variables? then ____variables = ____options.variables
	____options.variables = undefined
	____james.createStream (____file, ____callback) ->
    ____callback ____jade.compile(____file, ____options)(____variables)