class AddPosts < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.string :entry
  		t.string :subject
  	end
  end
end
