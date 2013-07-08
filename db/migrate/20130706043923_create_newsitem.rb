class CreateNewsitem < ActiveRecord::Migration
  def up
    create_table :newsitems do |t|
      t.string :title
      t.string :author_name
      t.text :content
      t.timestamps
  end

  def down
  end
end
