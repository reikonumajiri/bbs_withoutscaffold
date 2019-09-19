class RemoveCreatorNameFromBoards < ActiveRecord::Migration[6.0]
  def change

    remove_column :boards, :creator_name, :string
  end
end
