//
//  FacebookHeader.h
//  Stylizer
//
//  Created by Brad Seymour on 23/11/18.

@implementation ViewController
    
- (void)viewDidLoad {
    [super viewDidLoad];
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    // Optional: Place the button in the center of your view.
    loginButton.center = self.view.center;
    [self.view addSubview:loginButton];
}
    
    @end
