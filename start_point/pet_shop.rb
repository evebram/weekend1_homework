def pet_shop_name(name)
  return name[:name]
end

def total_cash(total)
  return total[:admin][:total_cash]
end

def add_or_remove_cash(total, amount)
  total[:admin][:total_cash] += amount
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, sold)
  shop[:admin][:pets_sold] = sold
  return shop
end

def stock_count(stock)
  return stock[:pets].length.to_i
end

# def pets_by_breed(shop, breed)
#   pet_breed = []
#   for pets in shop[:breed]
#    pet_breed.push(pets)
#    return pet_breed.length
#  end
# end

# def pets_by_breed(shop, breed)
#   pet_breed = []
#   pet_breed.push(shop[:breed])
#    for pets in pets_breed
#      if pets == breed
#        return pets.count
#      end
#    end
# end

# def pets_by_breed(shop, breed)
# pet_breed = []
# for pet in shop[:breed]
#   if pet == breed
#     pet_breed.push(pet)
#     return pet_breed.length
#   end
# end
# end

# def pets_by_breed(shop, breed)
#   for pets in shop[:breed]
#     if pets == breed
#       return pets.count
#     end
#   end
# end

# def find_pet_by_name(shop, name)
#   for pet in shop[:pets][3][:name]
#     if pet == name
#       return pet
#     end
#   end
# end

# def find_pet_by_name(shop, name)
#   for pet in shop[:pets][3][:name]
#     if pet == name
#       return pet
#     end
#   end
# end

def add_pet_to_stock(shop, pet)
  shop[:pets] += pet
  return shop[:pets].count
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash)
  customer[:cash] -= cash
end

def customer_pet_count(customer)
  return customer[:pets].count
end

end
