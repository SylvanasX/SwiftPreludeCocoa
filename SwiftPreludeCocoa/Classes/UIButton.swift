import UIKit

extension UIButton {
  public func setBackgroundColor(_ backgroundColor: UIColor, for state: UIControlState) {
    self.setBackgroundImage(.pixel(ofColor: backgroundColor), for: state)
  }
}
