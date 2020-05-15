require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  test 'the truth' do
    assert true
  end

  test 'create' do
    admin = create(:admin)
    assert admin.persisted?
  end
end
