class AddStatusToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :status, :integer
  end
end
