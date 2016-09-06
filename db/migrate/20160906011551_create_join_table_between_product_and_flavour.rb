class CreateJoinTableBetweenProductAndFlavour < ActiveRecord::Migration
  def change
    create_join_table :products, :flavours
  end
end
