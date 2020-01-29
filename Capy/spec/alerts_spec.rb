describe "Alertas de JS", :alert do
  before(:each) do
    visit "http://training-wheels-protocol.herokuapp.com/javascript_alerts"
  end

  it "Alerta" do
    click_button "Alerta"
    sleep 1

    msg = page.driver.browser.switch_to.alert.text
    puts msg
    expect(msg).to eql "Isto é uma mensagem de alerta"
    sleep 2
  end

  it "Confirma", :confirm do
    click_button "Confirma"
    sleep 1

    msg = page.driver.browser.switch_to.alert.text
    puts msg
    expect(msg).to eql "E ai confirma?"
    sleep 1

    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content "Mensagem confirmada"
    sleep 1
  end

  it "Não Confirma", :notconfirm do
    click_button "Confirma"
    sleep 1

    msg = page.driver.browser.switch_to.alert.text
    puts msg
    expect(msg).to eql "E ai confirma?"
    sleep 1

    page.driver.browser.switch_to.alert.dismiss
    expect(page).to have_content "Mensagem não confirmada"
    sleep 1
  end

  it "Accept Prompt", :accept_prompt do
    accept_prompt(with: "Bruno") do
      click_button "Prompt"
      sleep 1
    end
    expect(page).to have_content "Olá, Bruno"
    sleep 1
  end

  it "Dismiss Prompt", :dismiss_prompt do
    dismiss_prompt() do
      click_button "Prompt"
      sleep 2
    end

    expect(page).to have_content "Olá, null"
    sleep 2
  end
end
