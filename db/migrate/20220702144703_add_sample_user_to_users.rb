class AddSampleUserToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :sample_user, :boolean, default: false
  end
end
