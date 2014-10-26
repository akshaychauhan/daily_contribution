class AddContributionPeriod < ActiveRecord::Migration
  def change
  	create_table :contribution_periods do |t|
      t.belongs_to :group
      
  	end
  end
end
