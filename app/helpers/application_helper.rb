module ApplicationHelper
  def display_boolean(boolean)
    return boolean ? "Oui" : "Non"
  end

  def display_sensibility(value)
    if value.nil?
      return "-"
    elsif 0 < value && value < 1
      fraction = Rational(value)
      fraction_simplifiee = fraction.rationalize
      return "#{fraction_simplifiee.numerator}/#{fraction_simplifiee.denominator}"
    else
      return value.to_i
    end
  end
end
