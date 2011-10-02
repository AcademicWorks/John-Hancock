require 'helper'

class TestJohnHancock < Test::Unit::TestCase


  should "sign hash" do
    assert "2a9807b64b8068a8a2a665521ad9aeae", hash.sign
  end

  should "sign hash with shared secret" do
  	assert "d7321e9c8f961deb9e114dd476e420a0", hash.sign("ipsec")
  end

  should "sign hash with shared secret and ignore fields" do
  	assert "b2d1e2808552c9d421b2b6f617c71012", hash.sign("ipsec", ["test"])
  end

  private 

  def hash
  	{"foo" => "bar", "test" => "toon"}
  end

end
