require 'test_helper'
module Pois
  describe UserInfo, "current_user" do
    include ViewpointHelpers

    let(:viewpoint){ build_viewpoint(UserInfo, 'blambeau') }

    subject{
      query{ current_user }
    }

    it 'should only show the profile of the current user' do
      subject.size.should eq(1)
      subject.tuple_extract[:id].should eq('blambeau')
    end

  end
end
