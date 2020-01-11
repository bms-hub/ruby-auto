
describe "Forms" do
  def login(url, user, password, userf, passwordf, button, msgf, expectmsg)
    visit url
    fill_in userf, with: user
    fill_in passwordf, with: password

    click_button button

    expect(find(msgf)).to have_content expectmsg
    expect(find(msgf).text).to include expectmsg
  end

  $url = "http://training-wheels-protocol.herokuapp.com/login"
  $user = "stark"
  $password = "jarvis!"
  $userf = "username"
  $passwordf = "password"
  $button = "Login"
  $msgf = "#flash"

  it "Login com Sucesso" do
    @expectmsg = "Olá, Tony Stark. Você acessou a área logada!"

    login($url, $user, $password, $userf, $passwordf,
          $button, $msgf, @expectmsg)
  end

  it "senha incorreta" do
    @expectmsg = "Senha é invalida!"
    @password = "jarviis!"

    login($url, $user, @password, $userf, $passwordf,
          $button, $msgf, @expectmsg)
  end

  it "Usuário não cadastrado" do
    @expectmsg = "O usuário informado não está cadastrado!"
    @user = "starka"

    login($url, @user, $password, $userf, $passwordf,
          $button, $msgf, @expectmsg)
  end
end
