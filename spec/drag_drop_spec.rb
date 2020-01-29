describe "Drag & Drop", :drag do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/drag_and_drop"
  end
  after(:each) do
    sleep 3
  end

  it "Drag to Team Stark" do
    teams = find(".team-stark .column")
    teamc = find(".team-cap .column")

    img = find("img[alt$=Aranha")
    img.drag_to teams

    expect(teams).to have_css ("img[alt$=Aranha")
    expect(teamc).not_to have_css ("img[alt$=Aranha")
  end
end
