# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

# great pods are in https://trendingcocoapods.github.io/
def common_pods
    pod 'RxSwift',    '~> 3.0'
    pod 'RxCocoa',    '~> 3.0'
    pod 'Typhoon', '= 3.1.9'
    pod 'Alamofire', '~> 4.0'
    pod 'SwiftyJSON'
    pod 'Cartography'
end

target 'BTCos' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for BTCos
  common_pods
end

target 'BTCosTests' do
    inherit! :search_paths
    # Pods for testing
end

target 'BTCosUITests' do
    inherit! :search_paths
    # Pods for testing
end


