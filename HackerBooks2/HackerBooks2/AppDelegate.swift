//
//  AppDelegate.swift
//  HackerBooks2
//
//  Created by Nacho Villaverde Montalvo on 29/9/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var model = CoreDataStack(modelName: "Model")!
//    {
//        "authors": "Scott Chacon, Ben Straub",
//        "image_url": "http://hackershelf.com/media/cache/b4/24/b42409de128aa7f1c9abbbfa549914de.jpg",
//        "pdf_url": "https://progit2.s3.amazonaws.com/en/2015-03-06-439c2/progit-en.376.pdf",
//        "tags": "version control, git",
//        "title": "Pro Git"
//    }
    
    func loadData(){
        //borron y cuenta nueva
        do{
            try model.dropAllData()
        }catch{
            print("error when try to delete")
        }
        
        
        
        //crear secciones
        //let _ = BookTag(book: "libro1", tag: "tag1", inContext: model.context)
        
        
        //crear libros
        let img = UIImage(imageLiteralResourceName: "emptyBookCover.png")
        let libro = Book(title: "Pro Git", imageURL: "http://hackershelf.com/media/cache/b4/24/b42409de128aa7f1c9abbbfa549914de.jpg", pdfURL: "https://progit2.s3.amazonaws.com/en/2015-03-06-439c2/progit-en.376.pdf", image: img, inContext: model.context)
        
        
        //guardamos
        model.save()
        
    }
    
    
    
    //crear prueba
    
//    func prueba(){
//        
//        var tag = Tag(name: "un tag de prueba", inContext: model.context)
//        var tag2 = Tag(name: "otro tag de prueba", inContext: model.context)
//        
//        let img = UIImage(imageLiteralResourceName: "emptyBookCover.png")
//       
//        let book1 = Book(title: "Pro Git", imageURL: "http://hackershelf.com/media/cache/b4/24/b42409de128aa7f1c9abbbfa549914de.jpg", pdfURL: "https://progit2.s3.amazonaws.com/en/2015-03-06-439c2/progit-en.376.pdf", image: img, inContext: model.context)
//        let book2 = Book(title: "Pre Git", imageURL: "http://hackershelf.com/media/cache/b4/24/b42409de128aa7f1c9abbbfa549914de.jpg", pdfURL: "https://progit2.s3.amazonaws.com/en/2015-03-06-439c2/progit-en.376.pdf", image: img, inContext: model.context)
//        
//        let nota = Note(book: book1, inContext: model.context)
//        nota.text = "a ver que sale"
//        //busqueda
//        let busquedatag = NSFetchRequest<Tag>(entityName: Tag.entityName)
//        busquedatag.fetchBatchSize = 50
//        
//        let bt = try! model.context.fetch(busquedatag)
//        print(type(of:bt))
//        print(bt)
//        //busquedatag.sortDescriptors
//        //busqueda con filtrado
//        let busqueda2 = NSFetchRequest<Book>(entityName: Book.entityName)
//        busqueda2.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: false)]
//        
//        busqueda2.predicate = NSPredicate(format: "name == %@", book1)
//        let libros = try! model.context.fetch(busqueda2)
//        
//        //guardado
//        model.save()
//        
//    }
    
  


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
       // prueba()
        
        //creamos datos
        //crear fetchrequest
        let fr = NSFetchRequest<Book>(entityName: Book.entityName)
        fr.fetchBatchSize = 50
        fr.sortDescriptors = [NSSortDescriptor(key: "name", ascending: false)]
        
        
        //creamos fechrc
        let fc = NSFetchedResultsController(fetchRequest: fr, managedObjectContext: model.context, sectionNameKeyPath: nil, cacheName: nil)
        
        
         // Create the rootVC
        
        let nVC = LibraryTableViewController(fetchedResultsController: fc as! NSFetchedResultsController<NSFetchRequestResult>, style: .plain)
        //crear nav controller
        
        let navVC = UINavigationController(rootViewController: nVC)
        // crear window
        window = UIWindow(frame: UIScreen.main.bounds)
        
        //rootvc a la window
        window?.rootViewController = navVC

        // Display
        window?.makeKeyAndVisible()
        
        
        
        
        return true
    }

    
    
    
    
    
    
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

