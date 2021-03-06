# Module
ajax = require "ajax"

# GET
ajax.get("https://randomuser.me/api/", (response) -> createAvatar(response))

# Avatar
createAvatar = (data) ->
	avatar = new Layer(
		height: 200
		width: 200
		image: data.results[0].user.picture.large
	)
	
	avatar.center()