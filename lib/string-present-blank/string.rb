module StringPresentBlank
  module String
    def present(conditions={})
      if_condition = conditions.delete(:if)
      if_condition = true if if_condition.nil?

      unless_condition = conditions.delete(:unless)
      unless_condition = false if unless_condition.nil?

      if if_condition and not unless_condition
        self
      else
        ''
      end
    end

    def blank(conditions={})
      present(conditions) == self ? '' : self
    end
  end
end
