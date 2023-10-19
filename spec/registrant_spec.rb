require './lib/registrant'
require 'pry'
RSpec.describe Registrant do
  it "can initialize" do
    registrant_1 = Registrant.new('Bruce', 18, true)

    expect(registrant_1).to be_an_instance_of(Registrant)
  end

  it "can create multiple instances of Registrant" do
    registrant_1 = Registrant.new('Bruce', 18, true)
    registrant_2 = Registrant.new('Penny', 15)

    expect(registrant_1).to be_an_instance_of(Registrant)
    expect(registrant_2).to be_an_instance_of(Registrant)
  end

  it "can contain age, name, and permit data" do
    registrant_1 = Registrant.new('Bruce', 18, true)
    registrant_2 = Registrant.new('Penny', 15)
    binding.pry
    expect(registrant_1.age).to eq(18)
    expect(registrant_2.name).to eq('Penny') 
    expect(registrant_2.permit).to eq(false)
  end

end