class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :membership_id
      t.string :title
      t.string :content
      t.datetime :created_at
      t.datetime :sold_at
      t.datetime :updated_at
      t.datetime :relisted_at

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
