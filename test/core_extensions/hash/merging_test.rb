require 'test_helper'

Hash.include CoreExtensions::Hash::Merging

module CoreExtensions
  module Hash
    class MergingTest < Minitest::Test
      def setup
        @hash = {
          :class => 'awesome'
        }
      end

      def test_using_a_key_that_already_has_a_string_concatenates_the_new_one_after_that_string
        assert_equal 'awesome Ruby', @hash.string_merge(:class => 'Ruby')[:class]
      end

      def test_using_a_key_that_does_not_exist_yet_adds_the_passed_string_to_that_key
        assert_equal 'Ruby', @hash.string_merge(:favorite_language => 'Ruby')[:favorite_language]
      end
    end
  end
end
