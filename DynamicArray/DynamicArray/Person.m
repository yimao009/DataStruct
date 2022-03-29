//
//  Person.m
//  DynamicArray
//
//  Created by 郭瑞泽 on 2022/3/26.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name age:(NSUInteger)age {
    if (self = [super init]) {
        self.name = name;
        self.age = age;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Person [age = %@  name = %@]", @(_age), _name];
}

- (void)dealloc {
    NSLog(@"Person dealloc");
}

- (BOOL)isEqual:(id)other
{
    if (other == nil) {
        return NO;
    }

    if (![other isKindOfClass:[self class]]) {
        return NO;
    }
    Person *p = (Person *)other;
    return self.age == p.age;
}

//- (NSUInteger)hash
//{
//    return <#hash expression#>;
//}

@end
