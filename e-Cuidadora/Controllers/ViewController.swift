import UIKit
import Parchment

// This is the simplest use case of using Parchment. We just create a
// bunch of view controllers, and pass them into our paging view
// controller. FixedPagingViewController is a subclass of
// PagingViewController that makes it much easier to get started with
// Parchment when you only have a fixed array of view controllers. It
// will create a data source for us and set up the paging items to
// display the view controllers title.
class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let firstViewController = storyboard.instantiateViewController(withIdentifier: "First")
    let secondViewController = storyboard.instantiateViewController(withIdentifier: "Second")

    // Initialize a FixedPagingViewController and pass
    // in the view controllers.
    let pagingViewController = FixedPagingViewController(viewControllers: [
        firstViewController,
        secondViewController
        ])
    
    
    // Make sure you add the PagingViewController as a child view
    // controller and contrain it to the edges of the view.
    addChildViewController(pagingViewController)
    view.addSubview(pagingViewController.view)
    view.constrainToEdges(pagingViewController.view)
    pagingViewController.didMove(toParentViewController: self)
    }
  
}
