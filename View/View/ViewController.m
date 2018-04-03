//
//  ViewController.m
//  View
//
//  Created by apple on 2017/12/22.
//  Copyright © 2017年 gxfeng. All rights reserved.
//

#import "ViewController.h"
#import "alertView.h"
#import "FAlertView.h"

#define size  [UIScreen mainScreen].bounds.size

@interface ViewController ()
@property (nonatomic , strong)UIView *navView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _navView = [[UIView alloc]initWithFrame:CGRectMake(0, -64, size.width, 64)];
    _navView.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_navView];

}

- (IBAction)showBtn:(UIButton *)sender {
    
    
    [[FAlertView instance]showMessageWithText:@"" bgColor:[UIColor greenColor]];
    
    NSLog(@">>>one%@",self.view.subviews);

 /***
    [UIView animateWithDuration:0.2 animations:^{
        _navView.frame = CGRectMake(0, 0, size.width, 64);
    }];
    
    [[alertView instanceAlert]showString:@"" bgColor:[UIColor redColor]];
    NSLog(@">>>%@",self.view.subviews);
//    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(hiddenView:) userInfo:nil repeats:NO];*/
}

- (void)hiddenView:(NSTimer*)timer
{
    [timer invalidate];
    [UIView animateWithDuration:0.2 animations:^{
        _navView.frame = CGRectMake(0, -64, size.width, 64);
    }];
}

@end
