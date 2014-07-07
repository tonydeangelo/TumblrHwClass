//
//  TabViewController.m
//  TumblrHw
//
//  Created by Tony DeAngelo on 7/7/14.
//  Copyright (c) 2014 Yahoo. All rights reserved.
//

#import "TabViewController.h"
#import "HomeViewController.h"
#import "SearchViewController.h"
#import "AccountViewController.h"
#import "TrendingViewController.h"
#import "ComposeViewController.h"
#import "ActivityViewController.h"


@interface TabViewController ()
@property (weak, nonatomic) IBOutlet UIButton *homeButton;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UIButton *composeButton;
@property (weak, nonatomic) IBOutlet UIButton *accountButton;
@property (weak, nonatomic) IBOutlet UIButton *activityButton;
@property (weak, nonatomic) IBOutlet UIImageView *ExploreTabView;
@property (weak, nonatomic) IBOutlet UIView *backgroundView;

@property (nonatomic, strong) UIViewController *selectedViewController;
@property (nonatomic, strong) UIButton *selectedButton;
@property (nonatomic, strong) HomeViewController *homeViewController;
@property (nonatomic, strong) SearchViewController *searchViewController;
@property (nonatomic, strong) ComposeViewController *composeViewController;
@property (nonatomic, strong) AccountViewController *accountViewController;
@property (nonatomic, strong) ActivityViewController *activityViewController;



- (IBAction)onTapHomeButton:(id)sender;
- (IBAction)onTapSearchButton:(id)sender;
- (IBAction)onTapComposeButton:(id)sender;
- (IBAction)onTapAccountButton:(id)sender;
- (IBAction)onTapActivityButton:(id)sender;
@end

@implementation TabViewController

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
    
    self.homeButton.selected = YES;
    self.selectedButton = self.homeButton;
    
    self.homeViewController = [[HomeViewController alloc] init];
    self.searchViewController = [[SearchViewController alloc] init];
    self.composeViewController = [[ComposeViewController alloc] init];
    self.accountViewController = [[AccountViewController alloc] init];
    self.activityViewController = [[ActivityViewController alloc] init];
    
    [self.backgroundView addSubview:self.homeViewController.view];
    [self addChildViewController:self.homeViewController];
    self.selectedViewController = self.homeViewController;
    
    CGRect frame = self.searchViewController.view.frame;
    frame.size.height = self.backgroundView.frame.size.height;
    self.searchViewController.view.frame = frame;

}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    self.ExploreTabView.alpha = 1;
    [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionAutoreverse animations:^{
        [UIView setAnimationRepeatCount: 1000];
        CGRect frame = self.ExploreTabView.frame;
        frame.origin.y -=10;
        self.ExploreTabView.frame = frame;
    } completion:nil];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTapHomeButton:(id)sender {
    
    NSLog(@"Tapped Home");
    
    [self.selectedViewController.view removeFromSuperview];
    [self.selectedViewController removeFromParentViewController];
    [self.backgroundView addSubview:self.homeViewController.view];
    [self addChildViewController:self.homeViewController];
    self.selectedViewController = self.homeViewController;
    
    self.selectedButton.selected = NO;
    self.selectedButton = self.homeButton;
    self.homeButton.selected = YES;
    
}

- (IBAction)onTapSearchButton:(id)sender {
    
    NSLog(@"Tapped Search");
    
    [self.selectedViewController.view removeFromSuperview];
    [self.selectedViewController removeFromParentViewController];
    [self.backgroundView addSubview:self.searchViewController.view];
    [self addChildViewController:self.searchViewController];
    self.selectedViewController = self.searchViewController;
    
    self.selectedButton.selected = NO;
    self.selectedButton = self.searchButton;
    self.searchButton.selected = YES;
    
}

- (IBAction)onTapComposeButton:(id)sender {
    
    NSLog(@"Tapped Compose");
    
    [self.selectedViewController.view removeFromSuperview];
    [self.selectedViewController removeFromParentViewController];
    [self.backgroundView addSubview:self.composeViewController.view];
    [self addChildViewController:self.composeViewController];
    self.selectedViewController = self.composeViewController;
    
    self.selectedButton.selected = NO;
    self.selectedButton = self.composeButton;
    self.composeButton.selected = YES;
    
}

- (IBAction)onTapAccountButton:(id)sender {
    
    
    NSLog(@"Tapped Account");
    
    [self.selectedViewController.view removeFromSuperview];
    [self.selectedViewController removeFromParentViewController];
    [self.backgroundView addSubview:self.accountViewController.view];
    [self addChildViewController:self.accountViewController];
    self.selectedViewController = self.accountViewController;
    
    self.selectedButton.selected = NO;
    self.selectedButton = self.accountButton;
    self.accountButton.selected = YES;
    
}

- (IBAction)onTapActivityButton:(id)sender {
    
    [self.selectedViewController.view removeFromSuperview];
    [self.selectedViewController removeFromParentViewController];
    [self.backgroundView addSubview:self.activityViewController.view];
    [self addChildViewController:self.activityViewController];
    self.selectedViewController = self.activityViewController;
    
    self.selectedButton.selected = NO;
    self.selectedButton = self.activityButton;
    self.activityButton.selected = YES;

    
}
@end
