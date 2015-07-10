
#import "LoginViewController.h"

#import <SVProgressHUD/SVProgressHUD.h>
#import "PostListViewController.h"

@interface LoginViewController ()

@property (nonatomic, weak) IBOutlet UITextField *usernameField;
@property (nonatomic, weak) IBOutlet UITextField *passwordField;

@property (nonatomic, weak) IBOutlet UIButton *loginButton;

@end

@implementation LoginViewController

- (void)viewDidLoad
{
    self.usernameField.text = @"admin@infinum.co";
    self.passwordField.text = @"infinum1";
}

#pragma mark - Actions

-(IBAction)login:(id)sender{
    [SVProgressHUD show];
    
    PostListViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"PostListViewController"];
    [self.navigationController pushViewController:vc animated:YES];
}

@end