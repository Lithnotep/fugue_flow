class CreateDreams < ActiveRecord::Migration[6.0]
  def change
    create_table :dreams do |t|
      t.text :description
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
