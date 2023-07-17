class HealingWaters
 
  # An object to encapsulate the healing waters of a given location
  attr_accessor :name, :temperature, :color, :salinity, :minerals
 
  # Initializes and populates a new instance of HealingWaters
  #
  # name        - The String name of the healing waters
  # temperature - The Integer temperature of the healing waters
  # color       - The String color of the healing waters
  # salinity    - The Float salinity of the healing waters
  # minerals    - The Array of Strings representing minerals present
  #
  # Returns a new instance of HealingWaters
  def initialize(name, temperature, color, salinity, minerals)
    @name        = name
    @temperature = temperature
    @color       = color
    @salinity    = salinity
    @minerals    = minerals
  end
 
  # Calculates the mineral concentration of a given healing waters
  #
  # Returns a Float of the mineral concentration
  def mineral_concentration
    total_minerals = 0
 
    @minerals.each do |mineral|
      total_minerals += mineral.length
    end
 
    total_minerals.to_f / @minerals.length
  end
 
  def to_s
    "#{@name} Healing Waters:
     Temperature: #{@temperature} 
     Color: #{@color} 
     Salinity: #{@salinity}
     Total Minerals: #{@minerals.join(', ')}"
  end
end
 
# Examples
mineral_spring = HealingWaters.new('Mineral Spring', 68, 'blue', 0.28, ['calcium', 'magnesium', 'potassium', 'sulfate'])
sulfur_spring = HealingWaters.new('Sulfur Spring', 97, 'yellow', 0.25, ['sulfur'])
 
puts mineral_spring
puts
puts sulfur_spring
puts
puts "Mineral Spring Mineral Concentration: #{mineral_spring.mineral_concentration}" 
puts "Sulfur Spring Mineral Concentration: #{sulfur_spring.mineral_concentration}"