class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :preview
      t.text :corpse

      t.timestamps
    end
  end
end
