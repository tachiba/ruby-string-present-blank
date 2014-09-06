require "minitest/autorun"
require 'string-present-blank'

class TestString < MiniTest::Unit::TestCase
  def test_present
    assert_equal 'hogehoge', 'hogehoge'.present
    assert_equal 'hogehoge', 'hogehoge'.present(if: true)
    assert_equal 'hogehoge', 'hogehoge'.present(unless: false)

    assert_equal '', 'hogehoge'.present(if: false)
    assert_equal '', 'hogehoge'.present(unless: true)
  end

  def test_blank
    assert_equal '', 'hogehoge'.blank
    assert_equal '', 'hogehoge'.blank(if: true)
    assert_equal '', 'hogehoge'.blank(unless: false)

    assert_equal 'hogehoge', 'hogehoge'.blank(if: false)
    assert_equal 'hogehoge', 'hogehoge'.blank(unless: true)
  end
end
