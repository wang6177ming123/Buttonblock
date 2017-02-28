//
//  Alert.m
//  Buttonblock
//
//  Created by pactera on 17/2/28.
//  Copyright © 2017年 pactera. All rights reserved.
//

#import "Alert.h"
#import "UIAlertView+Block.h"

@implementation Alert

+ (void)alertViewWithTitle:(NSString *)title withMessage:(NSString *)message withCancel:(NSString *)cancelTitle usingBlock:(void (^) (NSInteger index))block
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:title message:message delegate:nil cancelButtonTitle:cancelTitle otherButtonTitles: nil];
    [alert showAlertViewWithCompleteBlock:block];
}

//获取当前正在显示的VC
+ (UIViewController *)getCurrentVC
{
    UIViewController *result = nil;
    
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal)
    {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tmpWin in windows)
        {
            if (tmpWin.windowLevel == UIWindowLevelNormal)
            {
                window = tmpWin;
                break;
            }
        }
    }
    
    UIView *frontView = [[window subviews] objectAtIndex:0];
    id nextResponder = [frontView nextResponder];
    
    if ([nextResponder isKindOfClass:[UIViewController class]])
        result = nextResponder;
    else
        result = window.rootViewController;
    
    return result;
}
@end
