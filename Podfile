# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

source 'https://github.com/LouisKoo777/SSATestPrivatePodsSpecs.git'
source 'https://github.com/CocoaPods/Specs.git'

target 'SSAComponentMainProject' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for SSAComponentMainProject
  
  # 私有商品详情业务+对接组件
  pod 'SSAComponentGoodsDetail'
  pod 'SSAComponentGoodsDetailCategory'  # 方便组件之间通信调用，使用的是CTMediator第三方 方案 Target-action
  
   # 私有确认订单业务+对接组件
  pod 'SSAComponentCheckOutCategory'
  pod 'SSAComponentCheckOut'
  
  # 第三方组件
  pod "SwiftHandyFrame"

  target 'SSAComponentMainProjectTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'SSAComponentMainProjectUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
