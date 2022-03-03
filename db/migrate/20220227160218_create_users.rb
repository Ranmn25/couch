class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.float :years_of_experience
      t.string :area_of_expertise
      t.string :email
      t.string :password
      t.boolean :is_therapist

      t.timestamps
    end
  end
end
