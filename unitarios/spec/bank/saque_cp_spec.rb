require_relative "../../app/bank"

describe ContaPoupanca do
  describe "Saque" do
    context "Quando o Saldo é positivo" do
      before(:all) do
        @cp = ContaPoupanca.new(1000.00)
        @cp.saque(200.00)
      end
      it "Então atualiza o saldo" do
        expect(@cp.saldo).to eql 798.00
      end
    end
  end
  context "Quando o saldo está zerado" do
    before(:all) do
      @cp = ContaPoupanca.new(0.00)
      @cp.saque(100.00)
    end
    it "Then print message" do
      expect(@cp.mensagem).to eql "Saldo insuficiente para saque :("
    end
    it "E o saldo continua zerado" do
      expect(@cp.saldo).to eql 0.00
    end
  end
  context "Quando o saldo não é suficiente" do
    before(:all) do
      @cp = ContaPoupanca.new(500.00)
      @cp.saque(501.00)
    end
    it "Then print message" do
      expect(@cp.mensagem).to eql "Saldo insuficiente para saque :("
    end
    it "E o saldo continua R$500.00" do
      expect(@cp.saldo).to eql 500.00
    end
  end
  context "Quando excede o limite por saque" do
    before(:all) do
      @cp = ContaPoupanca.new(1000.00)
      @cp.saque(701.00)
    end
    it "Then Print message" do
      expect(@cp.mensagem).to eql "Limite máximo por saque é de R$ 500"
    end
    it "E o saldo continua R$1000.00" do
      expect(@cp.saldo).to eql 1000.00
    end
  end
end
