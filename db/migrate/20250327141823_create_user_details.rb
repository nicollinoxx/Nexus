class CreateUserDetails < ActiveRecord::Migration[8.0]
  def change
    create_table :user_details do |t|
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
