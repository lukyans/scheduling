class AddPrivateToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :private, :boolean, null: false, default: false
  end
end
