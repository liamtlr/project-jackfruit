require 'rails_helper'
require_relative 'feature_spec_helpers'

feature 'food_swaps' do
  context 'no food_swaps have been added' do
    scenario 'should say there are no food swaps' do
      sign_up
      visit '/food_swaps'
      expect(page).to have_content 'No foodswaps yet'
    end
  end

  context 'foodswaps have been added' do
    before do
      sign_up
      FoodSwap.create(title: 'Help me eat this...')
    end

  scenario 'display foodswaps' do
    visit '/food_swaps'
    expect(page).to have_content('Help me eat this...')
    expect(page).not_to have_content('No fodswaps yet')
  end
end

context 'creating foodswaps' do
  scenario 'prompts user to fill out a form, then displays the new foodswap' do
    sign_up
    create_profile
    visit '/food_swaps'
    click_link 'Add a foodswap'
    fill_in 'Title', with: 'Beany bean'
    fill_in 'Spots available', with: 5
    click_button 'Create Food swap'
    expect(page).to have_content 'Beany bean'
    expect(current_path).to eq '/food_swaps'
  end
end

end
