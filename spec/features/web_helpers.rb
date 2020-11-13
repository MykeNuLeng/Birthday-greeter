def my_bday
  visit '/'
  fill_in 'name', with: 'Bob'
  fill_in 'bday', with: 13
  fill_in 'month', with: 11
  click_on 'Leggo'
end

def not_my_bday
  visit '/'
  fill_in 'name', with: 'Bob'
  fill_in 'bday', with: 25
  fill_in 'month', with: 12
  click_on 'Leggo'
end
