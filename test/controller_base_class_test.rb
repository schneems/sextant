require 'test_helper'

class FooTestController < ApplicationController
end

class ControllerBaseClassTest < ActiveSupport::TestCase
  test "a specified base class" do
    Sextant.controller_base_class = FooTestController
    assert_equal FooTestController, Sextant.controller_base_class
    Sextant.controller_base_class = nil
  end

  test "finds a suitable base class when none is specified" do
    Sextant.controller_base_class = nil
    assert_equal ::ApplicationController, Sextant.controller_base_class
  end
end
