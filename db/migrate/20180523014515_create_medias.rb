class CreateMedias < ActiveRecord::Migration[5.0]
  def change

    media_db_params = {
        L_ListingID: 'listing_id',
        L_Status: 'status',
        MED_caption: 'caption',
        MED_description: 'description',
        MED_file_size: 'file_size',
        MED_listing_media_id: 'listing_media_id',
        MED_listing_media_type_id: 'listing_media_type_id',
        MED_media_url: 'media_url',
    }

    create_table :media do |t|
      media_db_params.each do |key, value|
        if value.include? "_id"
          t.integer "#{value}"
        else
          t.string "#{value}"
        end
      end

      t.timestamps null: false
    end

  end
end