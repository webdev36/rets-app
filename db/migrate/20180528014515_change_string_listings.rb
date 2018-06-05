class ChangeStringListings < ActiveRecord::Migration[5.0]
  def change

    change_column :listings, :list_price, 'integer USING CAST(list_price AS integer)'
    change_column :listings, :bedrooms, 'integer USING CAST(bedrooms AS integer)'
    change_column :listings, :total_baths, 'integer USING CAST(total_baths AS integer)'

  end
end