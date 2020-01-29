

describe "Changing Window", :window do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/windows"
  end

  after(:each) do
    sleep 3
  end

  it "Abrindo nova guia" do
    new_window = window_opened_by { click_link "Clique aqui" }

    within_window -> { page.title == "Nova Janela" } do
      expect(page).to have_content 'Aqui temos uma nova janela \o/'
    end

    new_window.close
    expect(new_window.closed?).to be true
  end
end
