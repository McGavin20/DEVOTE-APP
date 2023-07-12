//
//  Persistence.swift
//  DEVOTE-APP
//
//  Created by Sharma on 11/07/2023.
//

import CoreData

struct PersistenceController {
    //MARK: PERSISTENCE CONTROLLER
    static let shared = PersistenceController()

    //MARK: PERSISTENT CONTAINER
    let container: NSPersistentContainer
    
    
    //MARK: INITIALIZATION: LOAD THE PERSISTENT STORE
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "DEVOTE_APP")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
               
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
    
    //MARK: PREVIEW
    
    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        for _ in 0..<10 {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
        }
        do {
            try viewContext.save()
        } catch {
            
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()
}
