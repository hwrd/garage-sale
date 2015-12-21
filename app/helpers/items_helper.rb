module ItemsHelper
  def price_savings(retail, price)
    retail - price
  end

  def price_savings_percentage(retail, price)
    price_savings(retail,price)/retail*100
  end
end
