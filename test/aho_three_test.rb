require 'minitest/autorun'
require_relative '../lib/aho_three'

class AhoThreeTest < Minitest::Test
  # A…3の倍数、B…3が含まれる、_A…3の倍数ではない、_B…3が含まれない、∧…かつ
  def test_aho_three
    assert_equal      1, aho_three(1)    # _A ∧ _B
    assert_equal 'aho!', aho_three(6)    #  A ∧ _B
    assert_equal 'aho!', aho_three(13)   # _A ∧  B
    assert_equal 'aho!', aho_three(30)   #  A ∧  B
  end
end