class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :corpse

      t.timestamps
    end
  end
end
