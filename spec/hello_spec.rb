describe "Meu primeiro script" do
  it "Visitar uma página" do
    visit "https://training-wheels-protocol.herokuapp.com/"
    expect(page.title).to eql 'Training Wheels Protocol'
  end
end
