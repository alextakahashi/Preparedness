import IGListKit

class HouseholdModel {
    
    let primaryKey: Int = 0
    

    
    let name: String
    let familyMembers: [Contactable]
    let pets: [PetType]?
    
    init(name: String, familyMembers: [Contactable], pets: [PetType]?) {
        self.name = name
        self.familyMembers = familyMembers
        self.pets = pets
    }
}

extension HouseholdModel: ListDiffable {
  func diffIdentifier() -> NSObjectProtocol {
    return primaryKey as NSObjectProtocol
  }

  func isEqual(toDiffableObject object: Any?) -> Bool {
    if let object = object as? HouseholdModel {
      return name == object.name
    }
    return false
  }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return false
    }
}
