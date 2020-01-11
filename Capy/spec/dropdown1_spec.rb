
describe "Caixa de Opções", :dropdown do
  it "Ítem específico simples" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"

    select "Loki", from: "dropdown"
    sleep 3 #stop de 3 segundos
  end

  it "1 Ítem usando find" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    drop = find(".avenger-list")
    drop.find("option", text: "Scott Lang").select_option
    sleep 3
  end
  it "Random Item", :sample do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    drop = find(".avenger-list")
    drop.all("option").sample.select_option
    sleep 3
  end
end
