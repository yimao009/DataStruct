//
//  DynamicArray.h
//  DynamicArray
//
//  Created by 郭瑞泽 on 2022/3/9.
//

#import <Foundation/Foundation.h>

//NS_ASSUME_NONNULL_BEGIN

@interface DynamicArray<ObjectType> : NSObject

/// 指定容量[capacity]初始化
/// @param capacity 容量大小
- (instancetype)initWithCapacity:(NSUInteger)capacity;

/// 容量大小有多少个
@property (nonatomic, assign, readonly) NSUInteger size;

/// 容量空间是否为空
@property (nonatomic, assign, readonly, getter=isEmpty) BOOL empty;

/// 获取空间最后一个元素
@property (nonatomic, assign, readonly) ObjectType lastElement;

/// 获取空间最后一个元素
@property (nonatomic, assign, readonly) ObjectType firstElement;

/// 增加元素到空间末尾
/// @param element 元素
- (void)add:(ObjectType)element;

/// 在[index]位置插入一个元素
/// @param index 插入元素位置
/// @param element 插入元素
- (void)addIndex:(NSUInteger)index element:(ObjectType)element;

/// 在[index]的位置设置[element]
/// @param index 增加元素的下标
/// @param element 元素
- (ObjectType)set:(NSUInteger)index value:(ObjectType)element;

/// 删除[index]的元素
/// @param index 元素的下标
/// 返回被删除元素
- (ObjectType)removeIndex:(NSUInteger)index;

/// 删除[index]的元素
/// @param element 元素
- (void)removeElement:(ObjectType)element;

/// 获取指定[index]下标位置元素
/// @param index 获取元素的下标
- (ObjectType)get:(NSUInteger)index;

/// 获取[element]元素的位置下标
/// @param element 获取下标的元素
- (NSUInteger)indexOfElement:(ObjectType)element;

/// 是否包含一个元素
/// @param element 包含元素
- (BOOL)containElement:(ObjectType)element;

/// 清空容量列表
- (void)clear;

@end

//NS_ASSUME_NONNULL_END
