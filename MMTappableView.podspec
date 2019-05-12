#
# Be sure to run `pod lib lint MMTappableView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MMTappableView'
  s.version          = '0.1.0'
  s.summary          = 'A view tap animation helper'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'A supporting class to have tappable animation and provides complete animtion while tapping'

  s.homepage         = 'https://github.com/MuthurajMuthulingam/MMTappableView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Muthuraj Muthulingam' => 'muthurajmuthulingam@gmail.com' }
  s.source           = { :git => 'https://github.com/MuthurajMuthulingam/MMTappableView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/Lingam42'

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.2'

  s.source_files = 'MMTappableView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MMTappableView' => ['MMTappableView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
