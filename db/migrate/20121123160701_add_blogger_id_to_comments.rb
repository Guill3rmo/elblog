class AddBloggerIdToComments < ActiveRecord::Migration
  def change
  	add_column :comments, :blogger_id , :integer
  end
end
