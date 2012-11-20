class AddBloggerId < ActiveRecord::Migration
def change
  add_column :bloggers, :blogger_id , :integer
  
  end
end