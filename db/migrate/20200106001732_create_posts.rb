class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string "title", :limit => 50, :null => false
      t.string "body", :null => false
      t.timestamps
    end
  end

  def down
  	drop_table :posts
  end
end
