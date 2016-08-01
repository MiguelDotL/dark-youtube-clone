class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.datetime :date
      t.integer :like
      t.integer :dislike
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
