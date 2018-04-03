
//
//  alertView.m
//  View
//
//  Created by apple on 2018/4/3.
//  Copyright © 2018年 gxfeng. All rights reserved.
//

#import "alertView.h"

#define ViewSize [UIScreen mainScreen].bounds.size

@implementation alertView
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, -64, ViewSize.width, 64);
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        [window addSubview:self];
    }
    return self;
}

+ (instancetype)instanceAlert
{
    static alertView *_alert = nil;
    static dispatch_once_t oneToken;
    dispatch_once(&oneToken,^{
        _alert = [[alertView alloc]init];
    });
    return _alert;
}

- (void)showString:(NSString *)text bgColor:(UIColor *)bgColor
{
    self.backgroundColor = bgColor;
    [UIView animateWithDuration:0.2 animations:^{
        self.frame = CGRectMake(0, 0, ViewSize.width, 64);
    }];
    

    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(hiddenView:) userInfo:nil repeats:NO];
}

- (void)hiddenView:(NSTimer*)timer
{
    NSLog(@">>>>hiddenView");
    [timer invalidate];
    [UIView animateWithDuration:0.2 animations:^{
        CGRect frame = self.frame;
        frame = CGRectMake(0, -64, ViewSize.width, 64);
        self.frame = frame;
    } completion:^(BOOL finished) {
//        [self removeFromSuperview];
        NSLog(@"-->>%@",[UIApplication sharedApplication].keyWindow.subviews);
    }];
}


@end
