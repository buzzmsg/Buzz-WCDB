#
# Be sure to run `pod lib lint BuzzWCDB.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BuzzWCDB'
  s.version          = '0.0.1'
  s.summary          = 'A short description of BuzzWCDB.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                      The WeChat Database, for Swift. (If you want to use WCDB for Objective-C, see the "WCDB" pod.)

                      WCDB is an efficient, complete, easy-to-use mobile database framework used in the WeChat application.
                      It can be a replacement for Core Data, SQLite & FMDB.
                       DESC

  s.homepage         = 'https://github.com/buzzmsg/Buzz-WCDB'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'admin@buzzmsg.com' => 'li437277219@gmail.com' }
  s.source           = { :git => 'https://github.com/buzzmsg/Buzz-WCDB.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'BuzzWCDB/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BuzzWCDB' => ['BuzzWCDB/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  wcdb.swift_version = '5'
  wcdb.dependency 'WCDBOptimizedSQLCipher', '~> 1.3.0'
  wcdb.dependency 'SQLiteRepairKit', '~> 1.3.0'

end
