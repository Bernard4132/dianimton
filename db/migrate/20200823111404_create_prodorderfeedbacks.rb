class CreateProdorderfeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :prodorderfeedbacks do |t|
      t.integer :productorder_id
      t.integer :user_id
      t.text :feedbacktxt

      t.timestamps
    end
  end
end
