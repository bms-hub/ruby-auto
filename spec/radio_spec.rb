describe "Botoes de Radio", :radio do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/radios"
  end

  after(:each) do
    sleep 3
  end

  it "Selecao através do ID" do
    choose("cap")
  end

  it "Selecao por Find e CSS selector" do
    find("input[value=guardians]").click
  end
end
