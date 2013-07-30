require 'test_helper'
module Pois
  describe Privacy, "pois" do
    include ViewpointHelpers

    let(:viewpoint){ build_viewpoint(Privacy, 'blambeau') }

    subject{
      query{ pois }
    }

    it 'should include public POIs' do
      subject.restrict(id: "brussels").should_not be_empty
    end

    it 'should include owned POIs' do
      subject.restrict(id: "kites").should_not be_empty
    end

    it 'should not include not owned POIs' do
      subject.restrict(id: "chocolate").should be_empty
    end

  end
end
