feature 'its figuring out your bday' do
  scenario 'its not my bday' do
    not_my_bday
    expect(page).to have_content '42 days left until your birthday'
  end

  scenario 'its your bday' do
    my_bday
    expect(page).to have_content 'Happy birthday Bob!'
  end
end
