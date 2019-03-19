class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|i|i.lifter == self}
  end

  def gyms
    memberships.map {|i|i.gym.name}
  end

  def self.average_lifts
    array_of_lifts = @@all.map {|i|i.lift_total}
    array_of_lifts.reduce(:+) / array_of_lifts.count.to_f
  end

  def cost_of_memberships
    memberships.map{|i|i.cost}.reduce(:+)
  end

  def create_membership(cost, gym)
    Membership.new(cost, self, gym)
  end

end
