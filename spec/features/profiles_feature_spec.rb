require 'rails_helper'
require_relative 'feature_spec_helpers'

feature 'Profiles' do
  context 'No profile' do
    scenario 'should prompt the user to complete profile' do
      sign_up
      expect(page).to have_content 'Create your profile to add a foodswap'
      expect(page).to have_link 'Create your profile'
      expect(page).not_to have_link 'Add a foodswap'
    end
  end
  context 'Profile creation' do
    before do
      sign_up
      create_profile(username: 'Joe', bio: '<3 cooking')
    end
    scenario 'user creates profile and can add a foodwap' do
      expect(page).not_to have_content 'Create your profile to add a foodswap'
      expect(page).to have_content 'Joe'
      expect(page).to have_link 'Add a foodswap'
    end
    scenario 'user can view profile by clicking link' do
      click_link('Joe')
      expect(page).to have_content '<3 cooking'
    end
  end
end
