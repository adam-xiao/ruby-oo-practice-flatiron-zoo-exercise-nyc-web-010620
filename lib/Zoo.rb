class Zoo

    attr_reader :location
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, location)
        @name = name
        @location = location
        #@animals = [], dont do - need single source of truth, IN THIS CASE ANIMAL(its usually the many)

        @@all << self
    end

    def add_animal(species, weight, nickname)
        #If being extra do an if/else to see if it exists already. The below would be the else
        x = Animal.all.find { |animal| animal.nickname == nickname }

        if x   
            x.zoo = self
        else
            Animal.new(species, weight, nickname, self)
        end
    end

    def animals
        Animal.all.select { |animal| animal.zoo == self }
    end

    def animal_species
        animals.map { |animal| animal.species }.uniq
    end

    def find_by_species(specie)
        animals.select { |animal| animal.species == specie}
    end

    def animal_nicknames
        animals.map { |animal| animal.nickname }
    end
    
    def self.find_by_location(location)
        self.all.select { |zoo| zoo.location == location }
    end
end
