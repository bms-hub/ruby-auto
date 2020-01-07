describe "Controle Dinâmico", :control do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/dynamic_controls"
  end
  after(:each) do
    sleep 3
  end

  it "Campo Habilitado/Desabilitado" do
    res = page.has_field? "movie", disabled: true
    puts res
    click_button "Habilita"
    expect(find("#message")).to have_content "Campo habilitado"
    res = page.has_field? "movie", disabled: false
    puts res
  end
end
