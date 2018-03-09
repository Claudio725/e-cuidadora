import UIKit

// Nothing to see here. Check out ViewController.swift for
// implementation details.

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
    
    //Cor laranja no uinavigation
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //Cor da barra de navegaçao superior
        UINavigationBar.appearance().barTintColor = UIColor.orange
        let image = UIImage(named: "aberturanova.png") as UIImage!
        UINavigationBar.appearance().setBackgroundImage(image,
                                                        for: .default)
        
        //Cores de todos itens na navigation bar
        UINavigationBar.appearance().tintColor = UIColor.white
        
        //Alterar a aparencia da Status bar
        UIApplication.shared.statusBarStyle = .lightContent
        
        
        //Cores da barra inferior e seus itens
        UITabBar.appearance().isTranslucent = false
        //UITabBar.appearance().barTintColor = UIColor.colorWithHexString("#9c9c9c") //background cinza
        UITabBar.appearance().tintColor = UIColor.white //cor dos itens em branco
        let recentsItemImage = UIImage(named:"aberturanova.png")!.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        UITabBar.appearance().backgroundImage = recentsItemImage
        UITabBar.appearance().clipsToBounds = true
        
        
        //Fonte negrito do titulo da barra de navegaçao
        let attrs = [
            NSAttributedStringKey.foregroundColor: UIColor.white,
            NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 17)
        ]
        
        UINavigationBar.appearance().titleTextAttributes = attrs
        return true
    }
}
