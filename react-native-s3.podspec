require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = package["description"]
  
  s.authors      = package["author"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/myalbum/react-native-s3.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency "React"
  s.dependency "AWSCognito", '~> 2.11.1'
  s.dependency "AWSCore", '~> 2.11.1'
  s.dependency "AWSS3", '~> 2.11.1'
end