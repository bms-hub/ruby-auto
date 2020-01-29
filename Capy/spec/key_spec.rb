describe "Keyboard Keys Pressed", :key do
  before(:each) do
    visit "http://training-wheels-protocol.herokuapp.com/key_presses"
  end
  after(:each) do
    sleep 3
  end

  it "Sending Keys" do
    teclas = %i[tab escape space enter shift control alt]

    teclas.each do |t|
      find("#campo-id").send_keys t
      expect(page).to have_content "You entered: " + t.to_s.upcase
      sleep 1
    end
  end

  it "Sending letters" do
    letras = %w[a s d f g h j k l]

    letras.each do |l|
      find("#campo-id").send_keys l
      expect(page).to have_content "You entered: " + l.to_s.upcase
      sleep 1
    end
  end
end
