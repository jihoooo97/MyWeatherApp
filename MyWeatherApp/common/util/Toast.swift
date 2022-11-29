import UIKit
import Toast_Swift

class Toast: NSObject {

    static func show(title: String, y: CGFloat) {
        if let vc = UIApplication.myKeyWindow?.visibleViewController as? UIViewController {
            guard let view = vc.view else { return }
            
            var style = ToastStyle()
            style.activitySize = CGSize(width: view.frame.width - 32, height: 36)
            style.verticalPadding = 10
            style.horizontalPadding = 48
            style.cornerRadius = 4
            style.backgroundColor = UIColor(displayP3Red: 0.29, green: 0.329, blue: 0.439, alpha: 0.9)
            style.messageFont = FooiyFonts.Caption1!
            
            ToastManager.shared.style = style
            
            view.hideAllToasts()
            view.makeToast(title,
                              point: CGPoint(x: view.frame.size.width / 2,
                                             y: y - 18),
                              title: nil, image: nil, completion: nil)
        }
    }

    static func hide() {
        if let vc = UIApplication.myKeyWindow?.visibleViewController as? UIViewController {
            guard let view = vc.view else { return }
            view.hideAllToasts()
        }
    }
}
