//
//  FAlertView.m
//  View
//
//  Created by apple on 2018/4/3.
//  Copyright © 2018年 gxfeng. All rights reserved.
//

#import "FAlertView.h"

#define FAsize [[UIScreen mainScreen]bounds].size
#define FAHeight 64

@implementation FAlertView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

+ (instancetype)instance
{
    static FAlertView *_alert = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        _alert = [[FAlertView alloc]init];
    });
    return _alert;
}

+ (FAlertView*)createAlertViewWithText:(NSString*)text bgColor:(UIColor*)bgColor
{
    FAlertView *alertView = [[FAlertView alloc]init];
    alertView.frame = CGRectMake(0, 0, FAsize.height, FAHeight);
    alertView.backgroundColor = bgColor;
    
    return alertView;
}

- (void)showMessageWithText:(NSString*)text bgColor:(UIColor*)bgColor
{
    FAlertView *alertView = [FAlertView createAlertViewWithText:text bgColor:bgColor];
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [window addSubview:alertView];
    [alertView showing];
}

- (void)hiddenAlertView
{
    [UIView animateWithDuration:0.2 animations:^{
        self.frame = CGRectMake(0, -FAHeight, FAsize.width, FAHeight);
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

- (void)onMainRun
{
    [self performSelector:@selector(hiddenAlertView) withObject:nil afterDelay:1.5];
}

- (void)showing
{
    [UIView animateWithDuration:0.26 animations:^{
        self.frame = CGRectMake(0, 0,FAsize.width, FAHeight);
    } completion:^(BOOL finished) {
        [self performSelectorOnMainThread:@selector(onMainRun) withObject:nil waitUntilDone:NO];
    }];
    
}



@end
