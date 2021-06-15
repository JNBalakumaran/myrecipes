class ChangeColumnInChef < ActiveRecord::Migration[5.0]
  def change
  	rename_column :chefs, :chefnmae, :chefname
  end
end
