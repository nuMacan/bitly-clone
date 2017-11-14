require 'securerandom'
class Url < ActiveRecord::Base

validates :original_url, presence: true, format: {with: /(http|https):\/\/www\..+.com/,
			message: "please enter nice link"}, uniqueness: true

validate :shorten

	def shorten
		# shorturl = ""
		# 7.times do |x|
		# 	choice = rand(3) + 1
		# 	case choice 
		# 	when 1
		# 		char = rand(9) + 48
		# 	when 2
		# 		char = rand (25) + 65
		# 	when 3
		# 		char = rand (25) + 97
		# 	end 
		# 	shorturl += char.chr
		# end
		self.shortened_url = SecureRandom.hex(5)
	end 



	 
	

# make a before_create a callback method	

	# This is Sinatra! Remember to create a migration!
end
