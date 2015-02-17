class CreateExplorers < ActiveRecord::Migration
  def change
    create_table :explorers do |t|
      t.string   "exp_name"
      t.string   "email"
      t.string   "password_digest"
      t.timestamps null: false
    end
  end
end
