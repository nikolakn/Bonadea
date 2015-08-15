require 'test_helper'

class StaffTest < ActiveSupport::TestCase
  def setup
    @s = Staff.new(name: "NikolaK", type: "Recepcija", premission: 1, password:"testsifra", password_confirmation: "testsifra")
  end

  test "should be valid" do
    assert @s.valid?
  end

  test "name should be present" do
    @s.name = " "
    assert_not @s.valid?
  end

  test "name should be unique" do
    duplicate_staff = @s.dup
    #duplicate_staff.name = @s.name.upcase
    @s.save
    assert_not duplicate_staff.valid?
  end
  
  test "name should not be too long" do
    @s.name = "a" * 51
    assert_not @s.valid?
  end

  test "signature should not be too long" do
    @s.signature = "a" * 256
    assert_not @s.valid?
  end
end
