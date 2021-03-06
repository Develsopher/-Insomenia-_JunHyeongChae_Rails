require 'test_helper'

class <%= service_name %>ServiceTest < ActiveSupport::TestCase
  setup do
    @<%= name %> = <%= service_name %>Service.create!()
  end

  test "<%= name %> 생성" do
    <%= name %>_id = @<%= name %>.id
    service = <%= service_name %>Service.new(<%= name%>_id)
    pp service.build_<%= name %>(<%= name %>_id).attributes
  end
end
