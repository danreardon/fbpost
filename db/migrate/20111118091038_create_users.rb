class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :email_confirmation
      t.string :password
      t.string :password_confirmation
      t.string :location
      t.string :facebookid
      t.string :twitterid

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
