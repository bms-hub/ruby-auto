class AvengerHeadQuarter
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(avenger)
    self.list.push(avenger)
  end
end

# TDD  Desenvolvimento guiado por teste (Test Drive Development)

describe AvengerHeadQuarter do
  it "deve adicionar um vingador" do
    hq = AvengerHeadQuarter.new

    hq.put("Spiderman")
    expect(hq.list).to eql ["Spiderman"]
  end

  it "deve adicionar uma lista de vingadores" do
    hq = AvengerHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")

    validador = hq.list.size > 0

    expect(hq.list.size).to be > 0
    expect(validador).to be true
  end

  it "Thor deve ser o primeiro da lista" do
    hq = AvengerHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")

    expect(hq.list).to start_with("Thor")
  end

  it "Ironman deve ser o último da lista" do
    hq = AvengerHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")
    hq.put("Ironman")

    expect(hq.list).to end_with("Ironman")
  end
  it "Deve conter o sobrenome" do
    avenger = "Peter Parker"

    expect(avenger).to match(/Parker/)
    expect(avenger).not_to match(/Papito/)
  end
end
