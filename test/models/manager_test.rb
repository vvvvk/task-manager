require 'test_helper'

class ManagerTest < ActiveSupport::TestCase
  test 'the truth' do
    assert true
  end

  test 'create' do
    manager = create(:manager)
    assert manager.persisted?
  end
end
