# frozen_string_literal: true

#
# Be sure to run `pod lib lint AtomicProperty.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AtomicProperty'
  s.version          = '1.0.0'
  s.summary          = 'Atomic Property implementation backed with generic lock wrappers'

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<~DESC
    Atomic property is a wrapper class with generic user value.
    It provides thread synchronization with custom lock implementations.
    It introduces @Atomic property wrapper.
  DESC

  s.homepage         = 'https://github.com/away4m/AtomicProperty'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { type: 'MIT', file: 'LICENSE' }
  s.author           = { 'alikiran' => 'away4m@gmail.com' }
  s.source           = { git: 'https://github.com/away4m/AtomicProperty.git', tag: s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.ios.deployment_target = '10.0'
  s.swift_version = '5.1'
  s.module_name   = 'AtomicProperty'

  s.source_files = 'AtomicProperty/Classes/**/*'

  # s.resource_bundles = {
  #   'AtomicProperty' => ['AtomicProperty/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
