class AddColumsToBloggers < ActiveRecord::Migration
  def change
    add_column :bloggers, :provider, :string
    add_column :bloggers, :uid, :string
  end
end
