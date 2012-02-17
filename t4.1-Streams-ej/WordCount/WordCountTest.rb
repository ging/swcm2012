require_relative 'WordCount'
require 'test/unit'

class TestWordCount < MiniTest::Unit::TestCase
  def test_case1
    assert_equal("4", count_w("How are you today?"))
    assert_equal("4", count_w("How are\n\ryou today?"))
    assert_equal("6", count_w("He doesn't feels well today"))
    assert_equal("5", count_w("Do you fell well today?"))
    assert_equal("9", count_w("Do you fell well today? \n\r No, I fell ill."))
    assert_equal("7", count_w("This line breaks seren-\n\rdipituous in two lines"))
    assert_equal("8", count_w("This line breaks seren-\n\rdipituous in two lines"))
	return
  end
end

