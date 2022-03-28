//
//  My_Assert.m
//  DynamicArray
//
//  Created by 郭瑞泽 on 2022/3/19.
//

#import "My_Assert.h"

@implementation My_Assert


+ (void)test:(BOOL)value {
   
    @try {
        if (!value) {
            @throw [NSException exceptionWithName:@"测试未通过" reason:@"测试未通过" userInfo:nil];
        }
    } @catch (NSException *exception) {
        NSLog(@"%@-%@-%@", exception.name, exception.reason, exception.userInfo);
    }
    
}

@end
