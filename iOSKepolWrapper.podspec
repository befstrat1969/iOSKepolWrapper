#
# Be sure to run `pod lib lint iOSKepolWrapper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'iOSKepolWrapper'
  s.version          = '0.1.1'
  s.summary          = 'iOSKepolWrapper for the KepolSdk'
  s.tag              = '0.1.1'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "This is a pod wrapping the functionality of KepolSdk"
  s.swift_versions   = '4.0'

  s.homepage         = 'https://github.com/befstrat1969/iOSKepolWrapper'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'befstrat1969' => 'befstrat@gmail.com' }
  s.source           = { :git => 'https://github.com/befstrat1969/iOSKepolWrapper.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'iOSKepolWrapper/Classes/**/*'
  
  # s.resource_bundles = {
  #   'iOSKepolWrapper' => ['iOSKepolWrapper/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  # git token: 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
end
