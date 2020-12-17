require "minitest/autorun"
require_relative "../lib/proxy"
require_relative "../lib/video"

describe VideoAuthenticationProxy do
	it "allows priviliged users to access the video" do
		video = Video.new "My first video", "My first description"
		proxy = VideoAuthenticationProxy.new video 
		proxy.play
		
		capture_io { video.play }.to_s.must_include "My first video"
		capture_io { video.play }.to_s.must_include "My first description"
	end
	
	it "forbids regular users to access the videos" do
		skip
	end	
		
		
end