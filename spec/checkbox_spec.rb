describe "Caixa de Seleção", :checkbox do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/checkboxes"
  end

  after(:each) do
    sleep 3
  end

  it "Marcar uma opção" do
    check("thor")
  end

  it "Desmarcar uma opção" do
    uncheck("antman")
  end

  it "Marcar com FIND set TRUE" do
    find('input[value="cap"]').set(true)
  end

  it "Desmarcar com FIND set FALSE" do
    find('input[value="guardians"]').set(false)
  end
end
