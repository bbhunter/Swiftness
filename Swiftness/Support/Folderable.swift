import Foundation

class Folderable: Codable, Equatable  {

    var title: String
    var folders: [Folder]
    let uuid: String

    init() {
        self.title = ""
        self.folders = []
        self.uuid = UUID().uuidString
    }

    func addNewFolder() {
        folders.append(Folder())
    }

    static func == (lhs: Folderable, rhs: Folderable) -> Bool {
        return lhs.uuid == rhs.uuid
    }

}
