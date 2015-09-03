class CreateBands < ActiveRecord::Migration
  def change
    create_table(:bands) do |t|
      t.column(:name, :string)
      t.column(:rating, :integer)

      t.timestamp()
    end
  end
end
