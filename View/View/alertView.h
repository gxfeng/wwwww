//
//  alertView.h
//  View
//
//  Created by apple on 2018/4/3.
//  Copyright © 2018年 gxfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface alertView : UIView
+ (instancetype)instanceAlert;
- (void)showString:(NSString*)text bgColor:(UIColor *)bgColor;
@end
