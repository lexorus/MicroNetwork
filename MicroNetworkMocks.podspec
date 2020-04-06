Pod::Spec.new do |spec|
  spec.name                     = "MicroNetworkMocks"
  spec.version                  = "0.1.0"
  spec.summary                  = "Mocks for MicroNetwork."
  spec.homepage                 = "https://github.com/lexorus/MicroNetwork"
  spec.license                  = "MIT"
  spec.author                   = { "Dmitrii Celpan" => "celpand@gmail.com" }
  spec.platform                 = :ios
  spec.swift_version 			      = "5.0"
  spec.ios.deployment_target  	= "10.0"
  spec.source                   = { :git => "https://github.com/lexorus/MicroNetwork.git", :tag => "#{spec.version}" }
  spec.source_files             = "MicroNetworkMocks/Sources/**/*.swift"
  spec.dependency               "MicroNetwork"
end
