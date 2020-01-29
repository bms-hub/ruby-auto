describe "Keypress", :key do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/key_presses"
  end

  after(:each) do
    sleep 2
  end

  it "Sending Key" do
    find("#campo-id").send_keys :space
  end
end
