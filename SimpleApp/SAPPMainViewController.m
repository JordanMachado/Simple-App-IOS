//
//  SAPPViewController.m
//  SimpleApp
//
//  Created by jordan machado on 25/06/2014.
//  Copyright (c) 2014 jordan machado. All rights reserved.
//

#import "SAPPMainViewController.h"

@interface SAPPMainViewController ()

@end

@implementation SAPPMainViewController

@synthesize fisrtViewController,secondViewController;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(SAPPFirstViewController *)fisrtViewController
{
    if(fisrtViewController == nil)
    {
        self.fisrtViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"firstView"];
        self.fisrtViewController.mainViewController = self;
    }
    return fisrtViewController;
}
-(SAPPSecondViewController *)secondViewController
{
    if(secondViewController == nil)
    {
        self.secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
        self.secondViewController.mainViewController = self;
    }
    return secondViewController;
}


- (IBAction)onTouchUpInsideBtnFirstViewController:(id)sender
{
    [self showViewController:self.fisrtViewController];
    
}
- (IBAction)onTouchUpInsideBtnSecondViewController:(id)sender
{
    [self showViewController:self.secondViewController];
}

-(void)showViewController:(SAPPBaseViewController *)viewController
{
    NSLog(@"ShowViewController %@",viewController);
    [self.currentViewController viewDidAppear:YES];
    [self.currentViewController.view removeFromSuperview];
    viewController.view.frame = CGRectMake(0,0,self.contentView.bounds.size.width,self.contentView.bounds.size.height);
    [self.contentView addSubview:[viewController view]];
    viewController.previousViewController = self.currentViewController;
    self.currentViewController = viewController;
    [viewController viewDidAppear:YES];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    self.currentViewController.view.frame = CGRectMake(0,0,self.contentView.bounds.size.width,self.contentView.bounds.size.height);
}


@end
