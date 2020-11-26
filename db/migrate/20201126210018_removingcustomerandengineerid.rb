class Removingcustomerandengineerid < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :customer_id
    remove_column :projects, :engineer_id

  end
end
