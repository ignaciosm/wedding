class AddMapToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :map, :string
  end
end
