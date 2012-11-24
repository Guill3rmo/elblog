class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
    	 t.integer :blogger_id
    	  t.string :comment_id
      t.timestamps
    end
    add_index :likes, :comment_id
    add_index :likes, :blogger_id
  end
end
