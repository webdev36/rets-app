class AddColumnsListings < ActiveRecord::Migration[5.0]
  def change
    drop_table :listings

    data = {
        L_ListOffice1: 'office_id',
        LO1_OrganizationName: 'office_name',
        L_ListingID: 'listing_id',
        L_DOM: 'days_on_market',
        LO1_PhoneNumber1: 'office_phone',
        L_ListAgent1: 'agent_id',
        LA1_UserFirstName: 'agent_first_name',
        LA1_UserLastName: 'agent_last_name',
        L_AddressNumber: 'street_number',
        L_AddressDirection: 'street_dir_prefix',
        L_AddressStreet: 'street_name',
        L_Address2: 'unit_number',
        L_City: 'city',
        L_State: 'state',
        L_Zip: 'postal_code',
        LMD_MP_Latitude: 'latitude',
        LMD_MP_Longitude: 'longitude',
        LM_Char10_9: 'county_area',
        LM_Char10_10: 'sub_area',
        L_Area: 'county',
        LM_char255_1: 'directions',
        L_DisplayId: 'mls_id',
        L_ListingDate: 'list_date',
        L_AskingPrice: 'list_price',
        LFD_Style_3: 'style',
        L_Remarks: 'public_remarks',
        LM_Char10_22: 'zoning',
        L_UpdateDate: 'modification_timestamp',
        L_Status: 'listing_status',
        LM_Int1_1: 'bedrooms',
        LM_Char25_10: 'master_bedroom_dimensions',
        LM_Char25_11: 'bedroom_2_dimensions',
        LM_Char25_12: 'bedroom_3_dimensions',
        LM_Char25_13: 'bedroom_4_dimensions',
        LM_Char25_14: 'bedroom_5_dimensions',
        LM_Char1_12: 'master_bed_1st_floor',
        LM_Int1_14: 'total_baths',
        LM_Int1_2: 'baths_full',
        LM_Int1_3: 'baths_half',
        LFD_BathFeatures_26: 'bath_features',
        LM_Char25_8: 'kitchen_room_dimensions',
        LM_Char25_5: 'dining_room_dimensions',
        LM_Char25_9: 'breakfast_room_dimensions',
        LM_Char25_4: 'living_room_dimensions',
        LM_Char25_6: 'family_room_dimensions',
        LM_Char25_16: 'bonus_room_dimensions',
        LM_Char10_27: 'office_room_dimensions',
        LM_Char25_3: 'entrance_hall_dimensions',
        LM_Char25_15: 'utility_room_dimensions',
        LM_Char10_7: 'subdivision',
        LM_Char10_8: 'neighborhood',
        LM_Int2_10: 'year_built',
        LFD_Heating_10: 'heating',
        LFD_FuelHeat_11: 'fuel_heat',
        LFD_WaterHeater_12: 'water_heater',
        LFD_AC_9: 'ac',
        LFD_InteriorFeatures_25: 'interior_features',
        LFD_ExteriorFeatures_28: 'exterior_features',
        LFD_ExteriorFinish_4: 'exterior_finish',
        LM_char10_56: 'waterfront_type',
        LFD_Roof_7: 'roof',
        L_PricePerSQFT: 'price_per_sqft',
        LM_Int2_5: 'sqft_living',
        LM_Int2_9: 'sqft_other_area',
        LM_Dec_1: 'approx_lot_sqft',
        LM_Char10_21: 'acres',
        L_Type_: 'list_type',
        LFD_Pool_29: 'private_pool',
        LM_Int1_7: 'garage',
        LM_Char25_20: 'garage_dimensions',
        LM_char10_42: 'garage_floor',
        LM_Char50_3: 'builder_name',
        LFD_Parking_16: 'parking',
        LM_Char10_14: 'elementary_school',
        LM_Char10_16: 'middle_school',
        LM_Char10_18: 'high_school',
        LM_Char1_17: 'hoa_required',
        LM_Dec_6: 'hoa_dues',
        LM_Char25_28: 'hoa_management',
        LFD_Flooring_8: 'flooring',
        LM_Char1_14: 'basement',
        LFD_Accessibility_31: 'accessibility',
        LFD_LotDescription_15: 'lot_description',
        LFD_FireplaceDescription_13: 'fireplace_description',
        LFD_WaterSewer_14: 'water_sewer',
        LFD_EquipmentAppliances_24: 'equipment_appliances',
        VT_VTourURL: 'virtual_tour_url',
    }

    create_table :listings do |t|
      data.each do |key, value|
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