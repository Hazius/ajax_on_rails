class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :email

      t.timestamps
    end
  end
end
