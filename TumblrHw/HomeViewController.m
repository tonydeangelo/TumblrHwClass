//
//  HomeViewController.m
//  TumblrHw
//
//  Created by Tony DeAngelo on 7/7/14.
//  Copyright (c) 2014 Yahoo. All rights reserved.
//

#import "HomeViewController.h"
#import "TabViewController.h"
#import "LogInViewController.h"


@interface HomeViewController ()
- (IBAction)onLogInButton:(id)sender;

@end

@implementation HomeViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onLogInButton:(id)sender {
    
    UIViewController *vc = [[LogInViewController alloc]
                            init];
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    [self presentViewController:vc animated:YES completion:nil];
    
}
@end
