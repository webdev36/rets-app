class ChangeStringListingsDays < ActiveRecord::Migration[5.0]
  def change

    change_column :listings, :days_on_market, 'integer USING CAST(days_on_market AS integer)'

  end
end