class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.integer :like
      t.integer :dislike
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
