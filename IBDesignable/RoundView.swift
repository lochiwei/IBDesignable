
import UIKit

@IBDesignable
class RoundView: UIView {
    
    // view design
    @IBInspectable var cornerRadius: CGFloat = 10 { didSet {update()} }
    @IBInspectable var borderWidth: CGFloat = 3 { didSet { update() } }
    @IBInspectable var color: UIColor = .yellow { didSet { update() } }
    
    func update() {
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
        backgroundColor = color
    }
    
    // for design time (live drawing)
    // when new view is dropped into IB
    override func prepareForInterfaceBuilder() {
        update()
    }
    
    // for runtime
    // when view is loaded from nib
    override func awakeFromNib() {
        update()
    }
}
