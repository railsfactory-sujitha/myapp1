class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :name
      t.string :address
      t.integer :phoneno

      t.timestamps
    end
  end
end
