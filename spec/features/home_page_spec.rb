feature 'the home page' do
  before do
    visit '/'
  end
 scenario 'it says hello' do
   expect(page).to have_content "S'up"
 end

 scenario 'it asks your name' do
   expect(page).to have_field "What's your name?"
 end

 scenario 'it asks your birthday' do
   expect(page).to have_field "When's your birthday?"
 end
end
