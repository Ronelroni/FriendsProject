class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.string :image
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
