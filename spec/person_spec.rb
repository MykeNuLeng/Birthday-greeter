require 'person'
describe Person do
  subject(:bob) { Person.new("Bob", 25, 12) }
  it 'can return its name' do
    expect(subject.name).to eq 'Bob'
  end

  it 'will tell you if its their bday' do
    expect(subject.bday?).to eq false
  end

  it 'will tell you the days until your bday' do
    expect(subject.cant_wait).to eq 42
  end
end
