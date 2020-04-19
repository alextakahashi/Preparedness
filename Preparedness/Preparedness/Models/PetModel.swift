struct PetModel: Nameable, FamilyConstructable {
    
    var name: String
    var animalType: PetType?
    
    init(name: String, animalType: PetType?) {
        self.name = name
        self.animalType = animalType
    }
}
