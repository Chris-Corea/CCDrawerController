#
# Be sure to run `pod lib lint CCDrawerController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CCDrawerController'
  s.version          = '1.0.0'
  s.summary          = 'A lightweight, easy to use side navigation controller. Forked from DrawerController.'

  s.homepage         = 'https://github.com/chris-corea/CCDrawerController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chris-corea' => 'ccorea@juul.com' }
  s.source           = { :git => 'https://github.com/chris-corea/CCDrawerController.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.1'
  
  s.subspec 'Core' do |ss|
      ss.source_files = 'CCDrawerController/Classes/DrawerController.swift', 'CCDrawerController/Classes/DrawerSegue.swift'
      ss.framework  = 'QuartzCore'
  end
  
  s.subspec 'CCDrawerVisualStates' do |ss|
      ss.source_files = 'CCDrawerController/Classes/DrawerBarButtonItem.swift', 'CCDrawerController/Classes/AnimatedMenuButton.swift', 'CCDrawerController/Classes/DrawerVisualState.swift'
      ss.dependency 'CCDrawerController/Core'
  end
end
