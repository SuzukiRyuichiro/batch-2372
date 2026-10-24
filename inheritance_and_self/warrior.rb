require_relative 'character'

class Warrior < Character
  attr_reader :warrior

  def can_cast_spell?
    return false # No warrior can cast spells
  end

  def total_power
    # TODO: twice the original total power
    super * 2
  end

  def join_forces(wizard) # expect an instance of wizard
    @wizard = wizard

    # Tell the wizard that they joined force with the warrior
    wizard.warrior = self
  end
end
