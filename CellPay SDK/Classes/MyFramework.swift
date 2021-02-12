//
//  MyFramework.swift
//  Pods

import UIKit

public class CellPayFramework {
    
    public static func performSegueToLoginVC(caller: UIViewController,requiredArgument: CellPayPaymentArguments,delegate:PaymentProtocol,islive:Bool) {
        WebService.isLive = islive
        let storyboard = UIStoryboard(name: "FrameworkStoryboard", bundle: bundle)
         let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
      //  let vc = storyboard.instantiateInitialViewController()!
        loginVC.modalPresentationStyle = .overFullScreen
        loginVC.getData(requiredData: requiredArgument, delegate: delegate)
        caller.present(loginVC, animated: true, completion: nil)
    }
    static func performSegueToMerchantTransactionDetailVC(caller: UIViewController,merchantDetailList:[MemberDetailsList],requiredArguments: CellPayPaymentArguments,delegate:PaymentProtocol) {
        let storyboard = UIStoryboard(name: "FrameworkStoryboard", bundle: bundle)
         let merchantTransactionVC = storyboard.instantiateViewController(withIdentifier: "MerchantTransactionDetailVC") as! MerchantTransactionDetailVC
      //  let vc = storyboard.instantiateInitialViewController()!
        merchantTransactionVC.modalPresentationStyle = .overCurrentContext
        merchantTransactionVC.getDataForMerchant(merchantBankList: merchantDetailList, requiredArguments: requiredArguments, delegate: delegate)
        caller.present(merchantTransactionVC, animated: true, completion: nil)
    }
    static func performSegueToConfirmPaymentVC(caller: UIViewController,requiredArguments: CellPayPaymentArguments,userName: String,accountNo: String,paymentDescription:String,otpEnable:Bool,delegate:PaymentProtocol) {
        let storyboard = UIStoryboard(name: "FrameworkStoryboard", bundle: bundle)
         let confirmPaymentVC = storyboard.instantiateViewController(withIdentifier: "ConfirmPaymentVC") as! ConfirmPaymentVC
      //  let vc = storyboard.instantiateInitialViewController()!
        confirmPaymentVC.modalPresentationStyle = .popover
        confirmPaymentVC.getRequiredArguments(requiredArguments: requiredArguments, userName: userName,accountNumber:accountNo, paymentDescription: paymentDescription, otpEnable: otpEnable, delegate: delegate)
        caller.present(confirmPaymentVC, animated: true, completion: nil)
    }
    static var bundle:Bundle {
        let podBundle = Bundle(for: LoginVC.self)
        print(podBundle)
        let bundleURL = podBundle.url(forResource: "MyFramework", withExtension: "bundle")
        return Bundle(url: bundleURL!)!
    }
}
