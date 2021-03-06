
describe "Login with Register", :login3 do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/access"
  end

  it "Login successfull" do
    # login_form = find("#login")
    # login_form.find('input[name="username"]').set "stark"
    # login_form.find("input[name='password']").set "jarvis!"

    within("#login") do
      find('input[name="username"]').set "stark"
      find("input[name='password']").set "jarvis!"
      click_button "Entrar"
    end

    expect(find("#flash").visible?).to be true
    expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
    sleep 2
  end

  it "Register successfull", :register do
    within("#signup") do
      find('input[name="username"]').set "stark"
      find("input[name='password']").set "jarvis!"
      click_link "Criar Conta"
    end
    expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
  end
end
