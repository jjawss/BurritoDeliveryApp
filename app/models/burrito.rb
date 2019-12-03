class Burrito < ApplicationRecord
  #belongs_to :transaction 

  def price
    price = 0
    if(self.meat == 'chicken')
      price = price + 7
    end
    if(self.meat == 'steak')
      price = price + 9
    end
    if(self.meat == 'carnitas')
      price = price + 7
    end
    if(self.meat == 'barbacoa')
      price = price + 8
    end
    if(self.meat == 'vegetarian')
      price = price + 6
    end
    return price
  end

end