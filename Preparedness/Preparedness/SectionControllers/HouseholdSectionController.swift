import IGListKit

class LabelSectionController: ListSectionController {
  override func sizeForItem(at index: Int) -> CGSize {
    return CGSize(width: collectionContext!.containerSize.width, height: 55)
  }

  override func cellForItem(at index: Int) -> UICollectionViewCell {
    return collectionContext!.dequeueReusableCell(of: MyCell.self, for: self, at: index)
  }
}
