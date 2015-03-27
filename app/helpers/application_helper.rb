module ApplicationHelper
	def gravatar_for(user)
	    gravatar_id = Digest::MD5::hexdigest(current_user.email.downcase)
	    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
	    image_tag(gravatar_url, alt: current_user.first_name, class: "gravatar img-circle")
	end

	def gravatar_in_post(user)
		gravatar_id = Digest::MD5::hexdigest(user)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, class: 'gravatar-in-post img-circle')
	end
end
