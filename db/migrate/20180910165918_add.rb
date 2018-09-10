class Add < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.column :name, :string
      t.column :email, :string
      t.column :password_hash, :string
      t.column :password_salt, :string
    end
    create_table :questions do |t|
      t.column :title, :string
      t.column :body, :string
      t.column :user_id, :integer
      t.column :score, :integer
    end
    create_table :answers do |t|
      t.column :response, :string
      t.column :user_id, :integer
      t.column :vote, :integer
    end
    create_join_table :questions, :answers
  end
end
