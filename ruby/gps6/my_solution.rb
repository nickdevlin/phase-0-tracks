# Virus Predictor

# I worked on this challenge with: Nick Devlin.
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Load a file that's located relative to the current file location
# Require will check a path variable
# require_relative is more specific and more adaptable
require_relative 'state_data'

class VirusPredictor

# creates new instance of VirusPredictor class taking 3 parameters
# setting them as instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# returns the speed_of_spread method but runs both predicted_deaths and speed_of_spread methods

  def virus_effects
    predicted_deaths(@population_density, @population)
    speed_of_spread(@population_density)
  end

  def self.national_report
    STATE_DATA.each do |state, demographics|
      nationalInstance = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
      nationalInstance.virus_effects
    end
    #california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects
  end

# sets below methods to private so they can't be called upon
  private

# takes parameters of population density, population, and state and sets number_of_deaths variable
# depending on the population and population density, rounding down floats to largest integer <= float

  def predicted_deaths(population_density, population)
    # predicted deaths is solely based on population density
    
    deaths = case @population_density
    when @population_density >= 200
      (@population * 0.4).floor
    when @population_density >= 150
      (@population * 0.3).floor
    when @population_density >= 100
      (@population * 0.2).floor
    when @population_density >= 50
      (@population * 0.1).floor
    else (@population * 0.05).floor
    end

    puts "#{@state} will lose #{deaths} people in this outbreak"

  end

  # takes in parameters of population density and state and calculates the speed
  # in months depending on the population density

  def speed_of_spread(population_density) #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.
  duration = 0.0

  if @population_density >= 200
    duration += 0.5
  elsif @population_density >= 150
    duration += 1
  elsif @population_density >= 100
    duration += 1.5
  elsif @population_density >= 50
    duration += 2
  else
    duration += 2.5
  end

  puts " and will spread across the state in #{duration} months.\n\n"

  end
  
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects
jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects
california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects
alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

VirusPredictor.national_report

#=======================================================================
# Reflection Section