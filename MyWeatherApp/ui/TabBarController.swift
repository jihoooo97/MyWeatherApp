import UIKit

class TabBarController: UITabBarController {

//    let aroundView = AroundViewController()
//    let searchView = LotteryListViewController()
//    let qrView = QrScanViewController()
//    let randomView = RandomViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTabbarItems()
        initUI()
    }

    private func setTabbarItems() {
//        aroundView.tabBarItem.badgeColor = UIColor(named: "B500")!
//        aroundView.tabBarItem.image = UIImage(named: "map_icon")!
//        aroundView.title = "내 주변"
//
//        setViewControllers([aroundView, searchView, qrView, randomView], animated: false)
    }
    
    private func initUI() {
        // 스크롤 할 때 tabbar색 바뀌는 거 비활성화
        tabBarController?.tabBar.backgroundColor = .white
        tabBarController?.tabBar.tintColor = .white
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
}
