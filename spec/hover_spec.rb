describe "Mouse Hover", :hover do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/hovers"
  end
  after(:each) do
    sleep 2
  end

  it "Mouse Sobre o Blade" do
    img = find("img[alt=Blade]")
    img.hover

    expect(page).to have_content "Nome: Blade"
  end

  it "Mouse Sobre alt contenha(*)" do
    img = find("img[alt*=ade]")
    img.hover

    expect(page).to have_content "Nome: Blade"
  end

  it "Mouse Sobre o Pantera Negra" do
    imag = find('img[src="/img/avatars/marvel/3.jpg"]')
    imag.hover

    expect(page).to have_content "Nome: Pantera Negra"
  end

  it "Mouse Sobre alt começa(^)" do
    imag = find("img[alt^=Pantera]")
    imag.hover

    expect(page).to have_content "Nome: Pantera Negra"
  end

  it "Mouse Sobre o Homem Aranha" do
    imag = find('img[alt="Homem Aranha"]')
    imag.hover

    expect(page).to have_content "Nome: Homem Aranha"
  end

  it "Mouse Sobre alt termina($)" do
    imag = find("img[alt$=Aranha]")
    imag.hover

    expect(page).to have_content "Nome: Homem Aranha"
  end
end
