class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|i|i.gym == self }
  end

  def lifters
    memberships.map{|i|i.lifter}
  end

  def lifter_names
    memberships.map{|i|i.lifter.names}
  end

  def lift_total_of_lifters
    lifters.map {|i|i.lift_total}.reduce(:+)
  end

end
