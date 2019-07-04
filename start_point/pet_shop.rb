def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash)
  shop[:admin][:total_cash] += cash
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, pet_sale)
  return shop[:admin][:pets_sold] += pet_sale
end

def stock_count(shop)
  return shop[:pets].size
end

def pets_by_breed(shop, breed)
  pets = []
  for pet in shop[:pets]
    if pet[:breed] == breed
      pets << breed
    else
      return pets
    end
  end
  return pets
end

def find_pet_by_name(shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return
end

def remove_pet_by_name(shop, name)
  pet = find_pet_by_name(shop, name)
  shop[:pets].delete(pet)
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet
end

def customer_cash(wallet)
  return wallet[:cash]
end

def remove_customer_cash(customer, cash)
  customer[:cash] -= cash
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(shop, pet, customer)
  return if (pet == nil)
  return if !(customer_can_afford_pet(customer, pet))

  add_pet_to_customer(customer, pet)
  remove_pet_by_name(shop, pet[:name])
  remove_customer_cash(customer, pet[:price])
  add_or_remove_cash(shop, pet[:price])
  increase_pets_sold(shop, 1)
end
