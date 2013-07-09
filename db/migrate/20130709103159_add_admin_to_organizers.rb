class AddAdminToOrganizers < ActiveRecord::Migration
  def self.up
    add_column :organizers, :admin, :boolean, :default => false
  end

  def self.down
    remove_column :organizers, :admin
  end
end