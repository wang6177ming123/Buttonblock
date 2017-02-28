//
//  ViewController.m
//  Buttonblock
//
//  Created by pactera on 17/2/28.
//  Copyright © 2017年 pactera. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Block.h"
#import "Alert.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [Alert alertViewWithTitle:@"测试" withMessage:@"123456677" withCancel:@"确定" usingBlock:^(NSInteger index) {
        NSLog(@"1233445");
    }];
    
    
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(10, 100, self.view.frame.size.width-20,60 )];
    [button setTitle:@"block" forState:UIControlStateNormal];
    button.backgroundColor =[UIColor redColor];
    [button handleControlEvent:UIControlEventTouchUpInside withBlock:^{
        NSLog(@"button block");
        
    }];
    [self.view addSubview:button];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
