//
//  AccountViewController.m
//  TumblrHw
//
//  Created by Tony DeAngelo on 7/7/14.
//  Copyright (c) 2014 Yahoo. All rights reserved.
//

#import "AccountViewController.h"
#import "LogInViewController.h"

@interface AccountViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIButton *LogInButton;
- (IBAction)onLogInButton:(id)sender;

@end

@implementation AccountViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.scrollView.contentSize = CGSizeMake(320, 568);
    
    self.LogInButton.layer .cornerRadius = 3;}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onLogInButton:(id)sender {
    
    
    UIViewController *vc = [[LogInViewController alloc] init];
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    [self presentViewController:vc animated:YES completion:nil];
    
}
@end
