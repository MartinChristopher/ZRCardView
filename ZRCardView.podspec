#
# Be sure to run `pod lib lint ZRCardView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZRCardView'
  s.version          = '0.0.1'
  s.summary          = 'A short description of ZRCardView.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/MartinChristopher/ZRCardView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MartinChristopher' => '519483040@qq.com' }
  s.source           = { :git => 'https://github.com/MartinChristopher/ZRCardView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.platform              = :ios, "9.0"

  s.source_files = 'ZRCardView/**/*'
  
  # s.resource_bundles = {
  #   'ZRCardView' => ['ZRCardView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
