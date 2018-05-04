module ApplicationHelper

	def full_title(title = "")
		base_title = "Resale_v2 a Classified ads"
		if title.empty?
			base_title
		else
			title + ' :: ' + base_title
		end
	end

	def categories
  		categories = Category.all
  	end
end
