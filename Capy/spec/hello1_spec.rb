

describe "Meu Primeiro Script" do
  it "visitar uma página" do
    visit "http://training-wheels-protocol.herokuapp.com/login"
    expect(page.title).to eql "Training Wheels Protocol"
  end

end
