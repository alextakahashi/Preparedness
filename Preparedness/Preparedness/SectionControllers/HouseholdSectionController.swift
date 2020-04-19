import IGListKit

class HouseholdSectionController: ListSectionController {
  override func sizeForItem(at index: Int) -> CGSize {
    return CGSize(width: collectionContext!.containerSize.width, height: 55)
  }

  override func cellForItem(at index: Int) -> UICollectionViewCell {
    return collectionContext!.dequeueReusableCell(of: HouseholdCollectionVieCell.self, for: self, at: index)
  }
}
