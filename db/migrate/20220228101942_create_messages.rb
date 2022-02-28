class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :user, null: false
      t.references :recipient, null: false
      t.text :content

      t.timestamps
    end
  end
end
