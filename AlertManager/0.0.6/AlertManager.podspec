Pod::Spec.new do |s|

  s.name         = "AlertManager"
  s.version      = "0.0.6"
  s.summary      = "Helps create new Alert Controller for the better development."
  s.homepage     = "http://codeyard.eu"
  s.license      = {type: "MIT", text: "DO NOT COPY!"}
  s.author       = { "petez" => "pete.zsolt@codeyard.eu" }
  s.source       = { :git => "https://github.com/zsoltpete/AlertManager.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '9.0'
  s.source_files = "AlertManager"
  s.frameworks = 'UIKit'
end