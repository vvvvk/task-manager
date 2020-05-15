require 'test_helper'

class DeveloperTest < ActiveSupport::TestCase
  test 'the truth' do
    assert true
  end

  test 'create' do
    developer = create(:developer)
    assert developer.persisted?
  end
end
