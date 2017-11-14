class CreateUrls < ActiveRecord::Migration[5.0]
	def change
		create_table :urls do |t|
			t.string :original_url
			t.string :shortened_url
			t.string :back_to_ori
			

			t.timestamp
		end 

	end
end





