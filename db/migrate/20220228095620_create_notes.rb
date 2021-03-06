class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.text :content
      t.boolean :is_private
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
