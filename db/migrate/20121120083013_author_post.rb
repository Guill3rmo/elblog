class AuthorPost < ActiveRecord::Migration
def change
  add_column :posts, :blogger_id, :integer
  end

end
