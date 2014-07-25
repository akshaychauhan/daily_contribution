class CreateContribution < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.integer :amount
      t.text :description
      t.belongs_to :user
      t.belongs_to :group

      t.timestamps
    end
  end
end
