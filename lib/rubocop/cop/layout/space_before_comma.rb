# frozen_string_literal: true

module RuboCop
  module Cop
    module Layout
      # Checks for comma (,) preceded by space.
      #
      # @example
      #
      #   #good
      #   each { |s, t| a(1, formats[0, 1])}
      #   #bad
      #   each { |s , t| a(1 , formats[0 , 1])}
      class SpaceBeforeComma < Cop
        include SpaceBeforePunctuation

        def kind(token)
          'comma' if token.type == :tCOMMA
        end
      end
    end
  end
end
