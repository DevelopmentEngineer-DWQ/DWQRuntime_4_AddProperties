//
//  ViewController.m
//  DWQRuntime_4_AddProperties
//
//  Created by 杜文全 on 17/3/18.
//  Copyright © 2017年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Category.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSObject *objc = [[NSObject alloc] init];
    objc.age = @"123";
    NSLog(@"%@",objc.age);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
