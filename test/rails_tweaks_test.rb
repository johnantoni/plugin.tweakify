require 'test_helper'

class RailsTweaksTest < ActiveSupport::TestCase

  def test_encode64
    @s = "hello".encode64
    assert_equal "aGVsbG8=", @s
  end

  def test_decode64
    @s = "aGVsbG8=".decode64
    assert_equal "hello", @s
  end

end
