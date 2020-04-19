import  UIKit

class HouseholdCollectionVieCell: UICollectionViewCell {
    
    var titleLabel = UILabel()
    
    override func layoutSubviews() {
        super .layoutSubviews()
        titleLabel.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width, height: 60)
        self.backgroundColor = UIColor.red
    }
    
}
