//
//  AppDelegate.m
//  RSSchool_T8
//
//  Created by Артем Стратиенко on 20.07.2021.
//

#import "AppDelegate.h"
#import "ArtistVC.h"

@interface AppDelegate ()
@property (nonatomic, strong) ArtistVC *artistVC;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.artistVC = [ [ArtistVC alloc ] initWithNibName:nil bundle:nil ];
    UINavigationController *rootNC = [ [UINavigationController alloc ] initWithRootViewController:_artistVC];
    self.window = [ [ UIWindow alloc] initWithFrame: [ [ UIScreen mainScreen ] bounds ] ];
    [_window setRootViewController:rootNC];
    self.window.backgroundColor = [ UIColor whiteColor ] ;
    [ self.window makeKeyAndVisible ];
    return YES;
}
@end
