class CreateTasks < ActiveRecord::Migration
  def change
       create_table(:bands_venues2) do |t|
       t.column(:band_id, :integer)
       t.column(:venue_id, :integer)
      end
  end
end
