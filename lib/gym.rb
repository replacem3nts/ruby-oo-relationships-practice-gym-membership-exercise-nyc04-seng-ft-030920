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
    Membership.all.select {|contract| contract.gym == self}
  end

  def gym_members
    memberships.map {|contract| contract.lifter}
  end

  def gym_member_names
    gym_members.map {|member| member.name}
  end

  def gym_lift_total
    gym_members.sum {|member| member.lift_total}
  end
end
