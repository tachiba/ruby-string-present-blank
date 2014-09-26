module StringPresentBlank
  module String
    def present(conditions={})
      if_condition = if conditions.has_key?(:if)
        conditions.delete(:if)
      else
        true
      end

      unless_condition = if conditions.has_key?(:unless)
        conditions.delete(:unless)
      else
        false
      end

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
