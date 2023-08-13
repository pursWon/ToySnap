import UIKit
import SnapKit

class ViewController: UIViewController {
    let grayView: UIView = UIView()
    let orangeView: UIView = UIView()
    let textLabel: UILabel = UILabel()
    
    let button: UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [grayView, orangeView, textLabel, button].forEach {
            view.addSubview($0)
        }
        
        setBackgroundColor()
        setConstraints()
        
        button.setTitle("Push The Button", for: .normal)
        button.setTitleColor(.black, for: .normal)
        setAddTarget()
    }
    
    func setBackgroundColor() {
        grayView.backgroundColor = .lightGray
        orangeView.backgroundColor = .orange
        button.backgroundColor = .yellow
    }
    
    func setConstraints() {
        grayView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        
        textLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
        
        button.snp.makeConstraints { make in
            make.width.height.equalTo(120)
            make.edges.equalToSuperview()
        }
    }
    
    func setAddTarget() {
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        button.isHidden = true
        
        orangeView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(200)
        }
        
        grayView.snp.remakeConstraints { make in
            make.bottom.leading.trailing.equalToSuperview()
            make.height.equalTo(200)
        }
        
        grayView.backgroundColor = .systemGreen
        textLabel.text = "Island"
        
        UIView.animate(withDuration: 1.0, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
}

