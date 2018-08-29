require 'rails_helper'

describe 'a user' do
  describe 'visiting the root page' do
    it 'can locate an area code' do
      visit '/'
      fill_in :q, with: '80203'
      click_on 'Locate'
save_and_open_page
      expect(current_path).to eq('/search')
      expect(page).to have_css('.stations', count: 10)
      expect(page).not_to have_content('Fuel Types: BD')
      expect(page).not_to have_content('Fuel Types: CNG')
      expect(page).not_to have_content('Fuel Types: E85')
      expect(page).not_to have_content('Fuel Types: HY')
      expect(page).not_to have_content('Fuel Types: LNG')
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
