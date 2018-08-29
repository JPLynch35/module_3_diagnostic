require 'rails_helper'

describe 'a user' do
  describe 'visiting the root page' do
    it 'can locate an area code' do
      visit '/'
      fill_in :q, with: '80203'
      click_on 'Locate'

      expect(current_path).to eq('/search')
      expect(page).to have_css('.stations')
      expect(page).to have_content('Fuel Types: ELEC').or have_content('Fuel Types: Propane')
      within('.station-1') do
        expect(page).to have_content('Name:')
        expect(page).to have_content('Address:')
        expect(page).to have_content('Fuel Types:')
        expect(page).to have_content('Distance:')
        expect(page).to have_content('Access Times:')
      end
    end
  end
end
