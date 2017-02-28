//
//  Alert.h
//  Buttonblock
//
//  Created by pactera on 17/2/28.
//  Copyright © 2017年 pactera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Alert : NSObject
//alertView
+ (void)alertViewWithTitle:(NSString *)title withMessage:(NSString *)message withCancel:(NSString *)cancelTitle usingBlock:(void (^) (NSInteger index))block;

//获取当前正在显示的VC
+ (UIViewController *)getCurrentVC;
@end
