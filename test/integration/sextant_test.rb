require 'test_helper'

class InheritNavigationTest < ActiveSupport::IntegrationCase

  test 'default index' do
    visit('/rails/routes')
    # save_and_open_page
    assert has_content?('foo_index')
    assert has_content?('/foo(.:format)')
    assert has_content?('foo#index')
  end

end
