#
# Be sure to run `pod lib lint HYProgressHUD.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HYProgressHUD'
  s.version          = '0.3.0'
  s.summary          = 'HYProgressHUD 只是对 MBProgressHUD 的简单封装.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
HYProgressHUD 只是对 MBProgressHUD 的简单封装，提供常用的显示，消失分类方法及消失Block回调。
                       DESC

  s.homepage         = 'https://github.com/yclzone/HYProgressHUD'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yclzone' => 'yclzone@gmail.com' }
  s.source           = { :git => 'https://github.com/yclzone/HYProgressHUD.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/yclzone'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HYProgressHUD/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HYProgressHUD' => ['HYProgressHUD/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'MBProgressHUD', '~> 1.0.0'
end
