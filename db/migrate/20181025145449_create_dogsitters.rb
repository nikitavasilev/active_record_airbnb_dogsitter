class CreateDogsitters < ActiveRecord::Migration[5.2]
  def change
    create_table :dogsitters do |t|
      t.belongs_to :city	
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.string :email
      t.timestamps
    end
  end
end
