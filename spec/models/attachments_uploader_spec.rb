# require 'carrierwave/test/matchers'

# describe AttachmentsUploader do
#   include CarrierWave::Test::Matchers

#   before do
#     AttachmentsUploader.enable_processing = true
#     @uploader = AttachmentsUploader.new(@attachment, :data)
    
#     path_to_file = @uploader.data

#     File.open(path_to_file) do |f|
#       @uploader.store!(f)
#     end
#   end

#   after do
#     AttachmentsUploader.enable_processing = false
#     @uploader.remove!
#   end

#   context 'the thumb version' do
#     it "should scale down a landscape image to be exactly 64 by 64 pixels" do
#       @uploader.thumb.should have_dimensions(64, 64)
#     end
#   end

#   context 'the small version' do
#     it "should scale down a landscape image to fit within 200 by 200 pixels" do
#       @uploader.small.should be_no_larger_than(200, 200)
#     end
#   end

#   it "should make the image readable only to the owner and not executable" do
#     @uploader.should have_permissions(0600)
#   end

#   it "should be the correct format" do
#     @uploader.should be_format('png')
#   end
# end