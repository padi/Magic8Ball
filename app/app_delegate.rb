# UIApplication
# - has one window
# - sends messages to it AppDelegate in certain iOS app events
class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    # Every iOS app has a UIWindow
    # - canvas where we set up other views
    # UIWindow *window = [[UIWindow alloc] initWithFrame:frame]
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.backgroundColor = UIColor.whiteColor
    @window.rootViewController = Magic8BallViewController.alloc.init
    @window.makeKeyAndVisible
    true
  end
end














# # Every iOS app has a UIWindow
# # - canvas where we set up other views
# # UIWindow *window = [[UIWindow alloc] initWithFrame:frame]
# @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
# @window.backgroundColor = UIColor.whiteColor
# @window.rootViewController = Magic8BallViewController.alloc.init
# @window.makeKeyAndVisible