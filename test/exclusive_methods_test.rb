require_relative 'test_helper'

class ExclusiveMethodsTest < MiniTest::Test
  describe 'A Foo' do
    it "should return an array of its exclusive instance methods" do
      assert_equal Foo.exclusive_instance_methods, [:bar]
    end

    it "should return an array of its exclusive class methods" do
      assert_equal Foo.exclusive_class_methods, [:baz]
    end

    it "should return an array of its instance methods from modules" do
      assert_includes Foo.instance_methods_from_modules, :fizz
    end

    it "should return an array of its class methods from modules" do
      assert_includes Foo.class_methods_from_modules, :buzz
    end
  end
end