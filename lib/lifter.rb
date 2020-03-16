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

  def new_memb(gym, cost)
    Membership.new(cost, self, gym)
  end

  def member_contracts
    Membership.all.select {|contract| contract.lifter == self}
  end

  def gym_list
    member_contracts.map {|contract| contract.gym}
  end

  def self.avg_lift_total
    lift_total_array = @@all.map {|lifter| lifter.lift_total}
    lift_total_array.sum / lift_total_array.count
  end

  def total_gym_cost
    member_contracts.sum {|contract| contract.cost}
  end
end
