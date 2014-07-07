//
//  LogInViewController.m
//  TumblrHw
//
//  Created by Tony DeAngelo on 7/7/14.
//  Copyright (c) 2014 Yahoo. All rights reserved.
//

#import "LogInViewController.h"

@interface LogInViewController ()
@property (weak, nonatomic) IBOutlet UIView *LogIn;
- (IBAction)onCancelButton:(id)sender;

@end

@implementation LogInViewController

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
    
    self.LogIn.layer.cornerRadius = 6;
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onCancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];}



- (IBAction)onTapCancelButton:(id)sender {
}
@end
