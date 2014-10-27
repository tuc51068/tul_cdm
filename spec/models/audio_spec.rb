require 'rails_helper'

RSpec.describe Audio, :type => :model do
  context 'Audio Class' do
    subject { Audio.new }

    it { is_expected.to have_metadata_stream_of_type(AudioMetadata) }
    it { is_expected.to have_metadata_stream_of_type(TulCdm::Datastreams::GeographicDatastream) }
    it { is_expected.to have_metadata_stream_of_type(TulCdm::Datastreams::PhysicalDatastream) }
    it { is_expected.to have_metadata_stream_of_type(TulCdm::Datastreams::CreationDatastream) }
    it { is_expected.to have_metadata_stream_of_type(TulCdm::Datastreams::VolumeDatastream) }

  end
end
