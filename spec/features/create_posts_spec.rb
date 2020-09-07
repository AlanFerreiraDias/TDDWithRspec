require 'rails_helper.rb'

feature 'Creating Posts' do
    scenario 'can create job' do    
        #visit root route 
        visit '/'
        # click create post link    
        clink_link 'Create Post'
        # fill in the from with needed information (title and caption of job)
        fill_in 'Title', with: 'title'
        fill_in 'Caption', with: 'caption'
        # click submit button
        click_button 'Create Update'
        # expect page to have the contente we submitted
        expect(page).to_have_content('title')
        expect(page).to_have_content('caption')
    end
end