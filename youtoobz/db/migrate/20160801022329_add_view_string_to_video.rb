class AddViewStringToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :viewstring, :string
  end
end
