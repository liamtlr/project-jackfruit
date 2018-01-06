require 'rails_helper'

feature 'food_swaps' do
  context 'no food_swaps have been added' do
    scenario 'should display a prompt to add a food swap' do
      visit '/food_swaps'
      expect(page).to have_content 'No foodswaps yet'
      expect(page).to have_link 'Add a foodswap'
    end
  end

  context 'foodswaps have been added' do
  before do
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
