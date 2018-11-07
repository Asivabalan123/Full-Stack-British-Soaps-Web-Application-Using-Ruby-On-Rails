class CreateSoaps < ActiveRecord::Migration[5.2]
  def change
    create_table :soaps do |t|
      t.string :soap_name
      t.integer :soap_age
      t.integer :director_id

      t.timestamps
    end
  end
end
