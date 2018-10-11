import UIKit

extension UIButton {
  public func setBackgroundColor(_ backgroundColor: UIColor, for state: UIControl.State) {
    self.setBackgroundImage(.pixel(ofColor: backgroundColor), for: state)
  }
}
