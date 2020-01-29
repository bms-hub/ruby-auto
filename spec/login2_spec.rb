
describe "Login random", :random do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/login2"
  end

  it "Birthday Date" do
    find("#userId").set "stark"
    find("#passId").set "jarvis!"
    login_form = find("#login")

    case login_form.text
    when /Dia/
      find("#day").set "29"
    when /Mês/
      find("#month").set "05"
    when /Ano/
      find("#year").set "1970"
    end

    sleep 3

    click_button "Login"

    expect(find("#flash").visible?).to be true
    expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
    sleep 2
  end
end
