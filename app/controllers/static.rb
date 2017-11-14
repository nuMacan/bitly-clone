get '/' do
	@urls = Url.all
	erb :"static/home"
end

post '/urls' do
#create a new url
p params
	# p params["long_url"]
	# p params["password"]
	# using the above params method 
	# create a new url with the long url
	# for e.g. Url.new(sdlfk)
	# #save the url
	# url.save
	# bring it back

	url = Url.new(original_url: params["long_url"])

	if url.save
		redirect "/"
	else
		p url.errors
		redirect "/"
	end
end



get '/signup' do
	erb :"static/signup"
end 

post '/create_user'do
	
end 

get '/user_profile/:id' do
	
end

#create migration file 
#inside migration file add new column in database integer called click_count with default value of 0 (add_column :urls, :click_count, :integer, default: 0)
# rake db:migrate

get '/:short_url' do #<a href="/<%= url.short_url%>"> url.short_url #<
	# p 1
	# p params
	# p params["short_url"]
	# byebug
	url = Url.find_by(shortened_url: params["short_url"])
	# how do you say this url clickcount + 1
	url.click_count = url.click_count + 1
	url.save
	redirect url.original_url #www.facebook.com
	# find the url database with short url sldkwer
	# redirect to long url 
	#redirect to long url 
end 


# get '/:short_url' do
# # redirect to appropriate "long URL"
# end 




# post '/signup' do
# 	# Do something processing with user input
# 	redirect to '/user/dashboard'
# end

# get '/user/dashboard' do
# 	erb :dashboard
# end
