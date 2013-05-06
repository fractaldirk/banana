class AddUserDetailsToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :gender, :string
    add_column :applicants, :email, :string
    add_column :applicants, :username, :string
    add_column :applicants, :location, :string
    add_column :applicants, :uid, :integer
  end
end
