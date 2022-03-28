//
//  Person.h
//  DynamicArray
//
//  Created by 郭瑞泽 on 2022/3/26.
//

#import <Foundation/Foundation.h>


/**
 __covariant(协变):用于泛型数据强转类型，可以向上强转，子类可以转成父类。
  __contravariant(逆变):用于泛型数据强转类型，可以向下强转，父类可以转成子类。
 */


NS_ASSUME_NONNULL_BEGIN

@interface Person<__covariant ObjectType> : NSObject

@property (nonatomic, strong) ObjectType language;

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSUInteger age;

- (instancetype)initWithName:(NSString *)name age:(NSUInteger)age;

@end

NS_ASSUME_NONNULL_END
