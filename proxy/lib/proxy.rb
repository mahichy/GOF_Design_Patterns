class VideoAuthenticationProxy
	def initialize video, user
		@video = video
		@user = user
	end

	def play
		if @user == "Privileged"
			@video.play
		else
			raise ForbidenAccessError, "Only Privileged users are allowed."
		end
	end

end