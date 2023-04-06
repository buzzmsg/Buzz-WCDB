#
# Be sure to run `pod lib lint BuzzWCDB.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BuzzWCDB'
  s.version          = '1.1.1'
  s.summary          = 'A short description of BuzzWCDB.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                      The BuzzMsg Database, for Swift. (If you want to use WCDB for Objective-C, see the "WCDB" pod.)

                      WCDB is an efficient, complete, easy-to-use mobile database framework used in the WeChat application.
                      It can be a replacement for Core Data.
                       DESC

  s.homepage         = 'https://github.com/buzzmsg/Buzz-WCDB'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'buzzmsg' => 'admin@buzzmsg.com' }
  # s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"
  s.source           = { :git => 'https://github.com/buzzmsg/Buzz-WCDB.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.module_name = "WCDBSwift"

  s.ios.deployment_target = '10.0'
  s.requires_arc = true
  s.source_files = 'BuzzWCDB/Classes/**/*'
  s.pod_target_xcconfig = {
    "GCC_PREPROCESSOR_DEFINITIONS" => "SQLITE_HAS_CODEC WCDB_BUILTIN_SQLCIPHER",
    'SWIFT_WHOLE_MODULE_OPTIMIZATION' => 'YES',
    'APPLICATION_EXTENSION_API_ONLY' => 'YES',
    "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/WCDBSwift",
    "LIBRARY_SEARCH_PATHS[sdk=macosx*]" => "$(SDKROOT)/usr/lib/system",
    "OTHER_SWIFT_FLAGS[config=Release][sdk=iphonesimulator*]" => "-D WCDB_IOS",
    "OTHER_SWIFT_FLAGS[config=Release][sdk=iphoneos*]" => "-D WCDB_IOS",
    "OTHER_SWIFT_FLAGS[config=Debug]" => "-D DEBUG",
    "OTHER_SWIFT_FLAGS[config=Debug][sdk=iphonesimulator*]" => "-D WCDB_IOS -D DEBUG",
    "OTHER_SWIFT_FLAGS[config=Debug][sdk=iphoneos*]" => "-D WCDB_IOS -D DEBUG",
  }
  # s.resource_bundles = {
  #   'BuzzWCDB' => ['BuzzWCDB/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.swift_version = '5'
  # s.dependency 'WCDBOptimizedSQLCipher', '~> 1.3.0'
  # s.dependency 'SQLiteRepairKit', '~> 1.3.0'
  s.dependency 'WCDBOptimizedSQLCipher', '1.2.1'
  s.dependency 'SQLiteRepairKit', '1.2.1'

end
