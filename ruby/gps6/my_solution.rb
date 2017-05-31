# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows us to include data from another file in the same directory
# require will search the ruby path (where gems are stored). It has a default path that it will search
require_relative 'state_data'

class VirusPredictor
#initializes an instance of the class, takes three arguments and assigns them to attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# calls two other methods and uses the attributes passed in upon initialization

  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  private
# based on population density, a certain fraction of the population is predicted to die
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      ratio = 0.4
    elsif @population_density >= 150
      ratio = 0.3
    elsif @population_density >= 100
      ratio = 0.2
    elsif @population_density >= 50
      ratio = 0.1
    else
      ratio = 0.05
    end

    number_of_deaths = (@population * ratio).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# speed starts at zero, gains more speed (less days) depending on population density
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end


end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


 def report
    STATE_DATA.each do |key, value|
      state = VirusPredictor.new(key, value[:population_density], value[:population])
      state.virus_effects
    end
  end

report
#=======================================================================
# Reflection Section