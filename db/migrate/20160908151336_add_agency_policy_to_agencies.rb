class AddAgencyPolicyToAgencies < ActiveRecord::Migration
  def change
  	add_column :agencies, :agency_policies, :string, array: true, default: '{}'
  end
end
