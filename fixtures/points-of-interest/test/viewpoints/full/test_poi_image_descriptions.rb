require 'test_helper'
module Pois
  describe Privacy, "poi_image_descriptions" do
    include ViewpointHelpers

    pending{
      let(:viewpoint){ full_viewpoint('blambeau') }

      subject{
        query{ poi_image_descriptions }
      }

      it 'should include public POIs' do
        subject.restrict(id: "manneken-1").should_not be_empty
      end

      it 'should include owned POIs' do
        subject.restrict(id: "kites-1").should_not be_empty
      end

      it 'should not include not owned POIs' do
        subject.restrict(id: "chocolate-1").should be_empty
      end
    }

  end
end
