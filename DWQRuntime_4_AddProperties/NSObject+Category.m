//
//  NSObject+Category.m
//  DWQRuntime_4_AddProperties
//
//  Created by 杜文全 on 17/3/18.
//  Copyright © 2017年 com.iOSDeveloper.duwenquan. All rights reserved.
//

#import "NSObject+Category.h"
#import <objc/message.h>
@implementation NSObject (Category)
-(void)setAge:(NSString *)age{
    // 添加属性,跟对象
    // 给某个对象产生关联,添加属性
    // object:给哪个对象添加属性
    // key:属性名,根据key去获取关联的对象 ,void * == id
    // value:关联的值
    // policy:策越
    objc_setAssociatedObject(self, @"age", age, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //    _name = name;


}
-(NSString *)age{

   return objc_getAssociatedObject(self, @"age");
}
@end
