

def sign_up(email: 'joe@test.com', password: '12345678')
  visit('/')
  click_link('Sign up')
  fill_in('Email', with: email)
  fill_in('Password', with: password)
  fill_in('Password confirmation', with: password)
  click_button('Sign up')
end

def create_profile(username: "Joe", bio: "<3 cooking")
  visit('/')
  click_link('Create your profile')
  fill_in('Username', with: username)
  fill_in('Bio', with: bio)
  click_button('Create Profile')
end
