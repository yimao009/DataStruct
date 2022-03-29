//
//  main.m
//  DynamicArray
//
//  Created by 郭瑞泽 on 2022/3/9.
//

#import <Foundation/Foundation.h>
#import "DynamicArray.h"
#import "My_Assert.h"

#import "Person.h"
#import "Java.h"
#import "iOS.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Java *java= [[Java alloc] init];
//        iOS *ios = [[iOS alloc] init];
//        Language *language = [[Language alloc] init];
//
//
//        Person<iOS *> *p = [[Person alloc] init];
//        p.language = ios;
//
//        Person<Java *> *p1 = [[Person alloc] init];
//        p1.language = java;
//
//        Person<Language *> *p2 = [[Person alloc] init];
//        p2 = p;
        
        
        
//        DynamicArray<NSNumber *> *list = [[DynamicArray alloc] init];
//        [list add:@99];
//        [list add:@88];
//        [list add:@77];
//        [list add:@66];
//        [list add:@55];
//        for (int i = 0; i <  10; i++) {
//            [list add: 20+i];
//        }

//        [list set:3 value:@80];
//        [list removeIndex:0];
//        [My_Assert test:[[list get:0] isEqualToNumber:@88]];
//        [My_Assert test:[list size] == 4];
//        [My_Assert test: [[list get:3] isEqualToValue:@55]];


//        NSLog(@"%@", list);
        ;
        DynamicArray<NSObject *> *arrays = [[DynamicArray alloc] init];
        [arrays add: [[Person alloc] initWithName:@"Jack" age:10] ];
        [arrays add:[NSNull null]];
        [arrays add: [[Person alloc] initWithName:@"James" age:12] ];
        [arrays add:[NSNull null]];
        [arrays add: [[Person alloc] initWithName:@"Rose" age:10] ];
//        [arrays clear];

        NSLog(@"%@", @([arrays indexOfElement:[NSNull null]]));;
        NSLog(@"%@", @([arrays indexOfElement:[[Person alloc] initWithName:@"James" age:12]]));;

        NSLog(@"%@", arrays);
        
    }
    return 0;
}
