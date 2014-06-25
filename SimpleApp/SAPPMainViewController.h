//
//  SAPPViewController.h
//  SimpleApp
//
//  Created by jordan machado on 25/06/2014.
//  Copyright (c) 2014 jordan machado. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SAPPFirstViewController.h"
#import "SAPPSecondViewController.h"
#import "SAPPBaseViewController.h"

@interface SAPPMainViewController : UIViewController

@property (strong,nonatomic) SAPPBaseViewController *currentViewController;
@property (strong,nonatomic) SAPPFirstViewController *fisrtViewController;
@property (strong,nonatomic) SAPPSecondViewController *secondViewController;

@property  (weak,nonatomic) IBOutlet UIView *contentView;


-(void)showViewController:(SAPPBaseViewController *)viewController;

@end
