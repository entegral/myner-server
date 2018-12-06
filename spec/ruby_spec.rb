require ('rspec')
require ('pry')
require ('Myner')


describe('Myner') do 

  it('tests a method for Myner') do

    dummy = Myner.new()

    expect(dummy.method()).to(eq(expected result))

  end

end

