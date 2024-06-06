class AddNameDescriptionToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :name, :string
    add_column :events, :description, :string
  end
end
