require_relative "test_helper"

class GS1Test < Minitest::Test
  def test_gs1_128_valid
    gs1 = Barkick::GS1_128.new("01900000087710111119081232020001082130037888")
    assert gs1.valid?
  end

  def test_gs1_128_invalid
    assert !Barkick::GS1_128.new("1").valid?
    assert !Barkick::GS1_128.new(" 016000275263").valid?
  end
end
