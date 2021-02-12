#
#  Be sure to run `pod spec lint CellPaySDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "CellPaySDK"
  spec.version      = "1.0.0"
  spec.summary      = "CellPay is a payment service powered by Cellcom Private Limited, a Payment Service Provider licensed by Nepal Rastra Bank."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = "CellPay is a payment service powered by Cellcom Private Limited, a Payment Service Provider licensed by Nepal Rastra Bank. CellPay provides digital payments and fund transfer services that uses web and mobile channel to help you make payments directly from your bank account. CellPay uses international level security to ensure you are protected at all times. CellPay is not a wallet service. The best way to understand CellPay is as a digital debit card. Only difference is that unlike a debit card CellPay cannot be lost or stolen from you, and you can link multiple bank accounts to your CellPay account. Currently the CellPay service supports utility payment, merchant payments and fund transfer services. With CellPay you can instantly transfer money via phone to family and friends from your bank account to theirs. Mobile Top-up & Bill Pay, Bill payment for water, electricity, internet, TV etc. Merchant payments at leading restaurants and retail stores, E-Commerce & Online Payments. To get your CellPay account all you need to do is download the CellPay app on your smartphone from google playstore or iOS appstore, or visit the CellPay website. Once you have registered yourself on CellPay and completed your KYC, you can add your bank accounts and start making payments. You can link as many accounts as you want with your CellPay profile. The only restriction is that the accounts should be in CellPay's partner banks. CellPay processes all transactions in real time. You should receive a transaction status notification within a few seconds of completing a transaction. If it takes longer than 5 minutes you should report the same to CellPay Customer Support. You can transfer funds only to registered CellPay customers. If you try to transfer funds to non-registered customers, the system will reject the transaction. You need an active internet connection to be able to use CellPay. CellPay uses a lot of high-end encryption technology to provide you ultimate security. To ensure you have full control over your security, you can change your PIN from the CellPay App. In profile management section select Change PIN option. You will be required to enter you OLD PIN, and then asked to select new security PIN. In case you have forgotten your login PIN, you can request a PIN reset from your mobile app. Once you initiate this request, you will be sent an OTP to authenticate the request. On providing the correct OTP in the App, you will be able to create a new PIN. The CellPay App does not store any information on the your mobile phone, therefore if your phone is lost or stolen, you do not have to worry. All your information is safe in the CellPay Servers. Additionally you can inform CellPay or Bank Support to block your account. The CellPay app is bound to only one handset at a time. If you change your handset, simply login using your mobile number and PIN, you will be sent an OTP to verify the request. Once you provide the correct OTP, you will be able to resume services likewise the CellPay app is bound to only one SIM card at a time. If you change your SIM card, simply login using your mobile number and PIN, you will be sent an OTP to verify the request. Once you provide the correct OTP, you will be able to resume services. CellPay is built on the sole objective of security and reliability. To ensure the best digital security is available to our clients, we follow multiple global security standards to deliver services to you."

  spec.homepage     = "https://cellpay.com.np"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  spec.author             = { "Rahul Karanjit" => "raulkaranjit@gmail.com" }
  # Or just: spec.author    = "Rahul Karanjit"
  # spec.authors            = { "Rahul Karanjit" => "raulkaranjit@gmail.com" }
  # spec.social_media_url   = "https://twitter.com/Rahul Karanjit"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"
  spec.platform = :ios, "12.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  # spec.source       = { :git => "http://EXAMPLE/CellPaySDK.git", :tag => "#{spec.version}" }
  spec.source = { :path => '.' }




  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files  = "CellPay SDK"
  # spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

  spec.swift_version = "5.1.3"

end
