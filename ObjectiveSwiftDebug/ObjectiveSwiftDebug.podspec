Pod::Spec.new do |spec|

  spec.name         = "ObjectiveSwiftDebug"
  spec.version      = "1.0.1"
  spec.summary      = "ObjectiveSwiftDebug 123456789."
  spec.description  = "ObjectiveSwiftDebug is test objective c integration. "

  spec.homepage     = "https://github.com/Svyat6868/ObjectiveSwiftDebug"
  spec.license      = "MIT"
  spec.author             = { "Vasyl" => "vasya6868@gmail.com" }
  spec.platform = :ios, "14.0"
  spec.ios.vendored_frameworks = 'ObjectiveSwiftDebug.framework'
  
  spec.source       = { :git => "https://github.com/Svyat6868/ObjectiveSwiftDebug.git", :tag => spec.version.to_s }

  spec.source_files  = "ObjectiveSwiftDebug/**/*.{h,m,swift}"
  spec.swift_version = "5.4"
  
end
