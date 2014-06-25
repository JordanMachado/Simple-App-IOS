//
//  SAPPBaseViewController.h
//  SimpleApp
//
//  Created by jordan machado on 25/06/2014.
//  Copyright (c) 2014 jordan machado. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SAPPMainViewController;

@interface SAPPBaseViewController : UIViewController
@property (strong,nonatomic) SAPPMainViewController *mainViewController;
@property (strong,nonatomic) SAPPBaseViewController *previousViewController;

@end
