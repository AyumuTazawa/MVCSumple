//
//  CustomView.swift
//  MVCSumple
//
//  Created by 田澤歩 on 2021/04/11.
//

import UIKit

protocol CustomViewDelegate: class {
    
    func setTotalVal(_ num1:Int, _ num2:Int)
    
    func getTotalVal() -> Int
    
}

class CustomView: UIView {
    
    var textLavel: UILabel!
    var button: UIButton!
    
    let number1 = 500
    let number2 = 1000
    
    var totalNum: Int?
    
    weak var delegate: CustomViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        textLavel = UILabel()
        textLavel!.backgroundColor = .red
        self.addSubview(textLavel!)
        
        button = UIButton()
        button!.setTitle("表示する", for: .normal)
        button!.setTitleColor(UIColor.black, for: .normal)
        button!.addTarget(self, action: #selector(btTap(_:)),
                          for: .touchUpInside)
        self.addSubview(button!)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func btTap(_ sender:UIButton){
        
        
        delegate?.setTotalVal(self.number1, self.number2)
        
        totalNum = delegate?.getTotalVal()
        
        textLavel?.text = totalNum?.description
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        textLavel!.frame = CGRect(x: bounds.origin.x + 30,
                                  y: bounds.origin.y + 30,
                                  width: bounds.size.width - 60,
                                  height: 50
        )
        
        let buttonSize =  CGSize(width: 100, height: 50)
        button!.frame = CGRect(x: (bounds.size.width - buttonSize.width)/2,
                               y: textLavel.frame.maxY + 30,
                               width: buttonSize.width,
                               height: buttonSize.height
        )
    }
}
