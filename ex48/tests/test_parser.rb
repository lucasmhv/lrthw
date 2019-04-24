require 'ex48/parser.rb'
require 'ex48/lexicon.rb'
require 'test/unit'

class TestParser < Test::Unit::TestCase

  def test_peek
    assert_equal('verb', peek([['verb', 'run']]))
    assert_equal( nil, peek([[]]))
  end

  def test_match
    assert_equal(['verb','run'], match([['verb', 'run']], 'verb'))
    assert_equal(nil, match([[]], 'verb'))
  end
end