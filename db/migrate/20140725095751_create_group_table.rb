class CreateGroupTable < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.string :name, null: false, default: ""
    	t.text :description
        t.belongs_to :user

        t.timestamps
    end

    create_table :group_members do |t|
    	t.belongs_to :user
    	t.belongs_to :group

    	t.timestamps
    end
  end
end
