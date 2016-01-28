require "Promo/version"

module Promo
  def self.Jammer(first_name, last_name)
    @first_name = first_name.downcase
    @last_name = last_name.downcase
    print  @first_name.concat("_#{@last_name}")
  end
end
