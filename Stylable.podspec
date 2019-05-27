#
# Be sure to run `pod lib lint Stylable.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Stylable'
  s.version          = '0.1.2'
  s.summary          = 'A small library to make styling of views a little easier'

  s.description      = <<-DESC
Style UIViews, UILabels, UITextFields, etc with easy to use configurations.
                       DESC

  s.homepage         = 'https://github.com/Impart/Stylable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Impart IT' => 'marcel@impart.nl' }
  s.source           = { :git => 'https://github.com/Impart/Stylable.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_versions = ["4.2", "5"]

  s.source_files = 'Stylable/Classes/**/*'

end
