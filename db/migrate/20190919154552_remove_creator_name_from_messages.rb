class RemoveCreatorNameFromMessages < ActiveRecord::Migration[6.0]
  def change

    remove_column :messages, :creator_name, :string
  end
end
