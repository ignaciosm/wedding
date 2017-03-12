class CreateGuestTranslations < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        Guest.create_translation_table!({
          :first_name => :string,
          :last_name => :string
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        Guest.drop_translation_table! :migrate_data => true
      end
    end
  end
end