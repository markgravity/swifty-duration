#
# Be sure to run `pod lib lint SwiftyDuration.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftyDuration'
  s.version          = '0.1.0'
  s.summary          = 'Utilities to make working with \'Duration\'s easier.'
  s.swift_version    = '5.0'
  

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Utilities to make working with 'Duration's easier. It's inspired by Duration in dart
                       DESC

  s.homepage         = 'https://github.com/markgravity/swifty-duration.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'markgravity' => 'markgravity.in@gmail.com' }
  s.source           = { :git => 'https://github.com/markgravity/swifty-duration.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SwiftyDuration/Classes/**/*'
  
  s.subspec 'Core' do |sp|
    sp.source_files = 'SwiftyDuration/Classes/Core/**/*'
  end
  
  s.subspec 'ObjectMapper' do |sp|
    sp.source_files = 'SwiftyAnalytics/Classes/ObjectMapper/**/*'
    sp.dependency 'SwiftyDuration/Core'
    sp.dependency 'ObjectMapper'
  end
end
