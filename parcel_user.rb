require './lib/parcels'

@list = []

def main_menu
  puts "Enter your parcel information: press 'a' to create a new Parcel, 'l' to list your costs"
  puts "Press 'x' to Exit."
  main_choice = gets.chomp
  if main_choice == 'a'
    add_parcel
  elsif main_choice == 'l'
    list_costs
  elsif main_choice == 'd'
    delete_parcel
  elsif main_choice == 'x'
    puts "Good-Bye."
  else
    puts "Not a Valid Option."
    main_menu
  end
end

def add_parcel
  puts "Enter the measurements of: Weight"
  weight = gets.chomp.to_i
  puts "Enter the measurements of: Height"
  height = gets.chomp.to_i
  puts "Enter the measurements of: Width"
  width = gets.chomp.to_i
  puts "Enter the measurements of: Length"
  length = gets.chomp.to_i
  new_parcel = Parcel.new(weight, height, width, length)
  @list << new_parcel
  puts "Parcel added.\n\n"
  main_menu
end


def list_costs
  puts "Here are all of your Parcel Costs!"
  @list.each do |parcel|
    puts parcel.cost_to_ship
  end
  puts "/n"
  main_menu
end

main_menu
# end

# def delete_parcel

