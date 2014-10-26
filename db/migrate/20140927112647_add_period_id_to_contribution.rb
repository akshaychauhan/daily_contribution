class AddPeriodIdToContribution < ActiveRecord::Migration
  def change
  	add_column :contributions, :contribution_period_id, :integer, references: :contribution_periods
  end
end
