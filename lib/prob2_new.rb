class VendingMachine
  def initialize()
      @drinks = 20
  end
  def purchase(amount)
      @drinks -= amount
  end
  def restock(amount)
      @drinks += amount
  end
  def get_inventory()
      return @drinks
  end
  def report()
      puts "Inventory: #{@drinks} bottles"
  end
end
