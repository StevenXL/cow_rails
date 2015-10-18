class Cow < ActiveRecord::Base
  def moo
    "Moo from #{name}"
  end
end
