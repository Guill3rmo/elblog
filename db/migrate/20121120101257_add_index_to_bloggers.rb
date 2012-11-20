class AddIndexToBloggers < ActiveRecord::Migration
def change
  add_index :bloggers, :blogger_id
  end
end
