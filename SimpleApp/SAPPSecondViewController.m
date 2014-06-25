//
//  SAPPSecondViewController.m
//  SimpleApp
//
//  Created by jordan machado on 25/06/2014.
//  Copyright (c) 2014 jordan machado. All rights reserved.
//

#import "SAPPSecondViewController.h"
#import "SAPPMainViewController.h"

@interface SAPPSecondViewController ()

@end

@implementation SAPPSecondViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onTouchUpInsideBtnGoBack:(id)sender
{
    [self.mainViewController showViewController:self.previousViewController];
}
@end
