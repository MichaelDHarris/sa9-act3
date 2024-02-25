require 'prob2_new'
RSpec.describe VendingMachine do
    let(:vending) { VendingMachine.new() }

    describe "#purchase" do
      it "Lowers total drinks" do
        vending.purchase(10)
        expect(vending.get_inventory).to eq(10)
      end
    end
    describe "#restock" do
      it "Raises total drinks" do
        vending.restock(10)
        expect(vending.get_inventory).to eq(30)
      end
    end
    describe "#get_inventory" do
      it "Returns drink total" do
        expect(vending.get_inventory).to eq(20)
      end
    end
    describe "#report" do
    it "Prints current inventory" do
        expect { vending.report }.to output(a_string_including("Inventory: 20 bottles")).to_stdout
    end
  end
end
