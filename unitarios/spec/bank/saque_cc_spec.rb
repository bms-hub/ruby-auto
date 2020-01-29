require_relative "../../app/bank"

describe ContaCorrente do
  describe "Saque" do
    context "Quando o Saldo é positivo" do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.saque(200.00)
      end
      it "Então atualiza o saldo" do
        expect(@cc.saldo).to eql 795.00
      end
    end
  end
  context "Quando o saldo está zerado" do
    before(:all) do
      @cc = ContaCorrente.new(0.00)
      @cc.saque(100.00)
    end
    it "Then print message" do
      expect(@cc.mensagem).to eql "Saldo insuficiente para saque :("
    end
    it "E o saldo continua zerado" do
      expect(@cc.saldo).to eql 0.00
    end
  end
  context "Quando o saldo não é suficiente" do
    before(:all) do
      @cc = ContaCorrente.new(500.00)
      @cc.saque(501.00)
    end
    it "Then print message" do
      expect(@cc.mensagem).to eql "Saldo insuficiente para saque :("
    end
    it "E o saldo continua R$500.00" do
      expect(@cc.saldo).to eql 500.00
    end
  end
  context "Quando excede o limite por saque" do
    before(:all) do
      @cc = ContaCorrente.new(1000.00)
      @cc.saque(701.00)
    end
    it "Then Print message" do
      expect(@cc.mensagem).to eql "Limite máximo por saque é de R$ 700"
    end
    it "E o saldo continua R$1000.00" do
      expect(@cc.saldo).to eql 1000.00
    end
  end
end
