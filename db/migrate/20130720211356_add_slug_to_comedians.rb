class AddSlugToComedians < ActiveRecord::Migration
  def change
    add_column :comedians, :slug, :string
  end
end
