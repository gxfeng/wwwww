//
//  SecondViewController.m
//  View
//
//  Created by apple on 2018/4/3.
//  Copyright © 2018年 gxfeng. All rights reserved.
//

#import "SecondViewController.h"
#import "alertView.h"
#import "FAlertView.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)showNavView:(UIButton *)sender {
//    [[alertView instanceAlert]showString:@"" bgColor:[UIColor yellowColor]];
    [[FAlertView instance]showMessageWithText:@"" bgColor:[UIColor purpleColor]];
    NSLog(@">>>two%@",self.view.subviews);
}



@end
