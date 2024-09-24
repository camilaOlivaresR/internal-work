class CreatePostulations < ActiveRecord::Migration[7.2]
  def change
    create_table :postulations do |t|
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.references :publication, null: false, foreign_key: true

      t.timestamps
    end
  end
end
