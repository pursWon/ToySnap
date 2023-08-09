import UIKit
import SnapKit

class ViewController: UIViewController {
    let redView: UIView = UIView()
    let orangeView: UIView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(redView)
        view.addSubview(orangeView)
        
        redView.backgroundColor = .red
        orangeView.backgroundColor = .orange
        
        redView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
            make.size.width.height.equalTo(100)
            make.left.equalTo(view.snp.left)
        }
        
        orangeView.snp.makeConstraints { make in
            make.center.equalTo(view.snp.center)
            make.size.width.height.equalTo(100)
        }
    }
}

