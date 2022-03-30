//
//  List.h
//  链表
//
//  Created by guoruize on 2022/3/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol List <NSObject>
/// 指定容量[capacity]初始化
/// @param capacity 容量大小
- (instancetype)initWithCapacity:(NSUInteger)capacity;

/// 容量大小有多少个
@property (nonatomic, assign, readonly) NSUInteger size;

/// 容量空间是否为空
@property (nonatomic, assign, readonly, getter=isEmpty) BOOL empty;

/// 获取空间最后一个元素
@property (nonatomic, assign, readonly) id lastElement;

/// 获取空间最后一个元素
@property (nonatomic, assign, readonly) id firstElement;

/// 增加元素到空间末尾
/// @param element 元素
- (void)add:(id)element;

/// 在[index]位置插入一个元素
/// @param index 插入元素位置
/// @param element 插入元素
- (void)addIndex:(NSUInteger)index element:(id)element;

/// 在[index]的位置设置[element]
/// @param index 增加元素的下标
/// @param element 元素
- (id)set:(NSUInteger)index value:(id)element;

/// 删除[index]的元素
/// @param index 元素的下标
/// 返回被删除元素
- (id)removeIndex:(NSUInteger)index;

/// 删除[index]的元素
/// @param element 元素
- (void)removeElement:(id)element;

/// 获取指定[index]下标位置元素
/// @param index 获取元素的下标
- (id)get:(NSUInteger)index;

/// 获取[element]元素的位置下标
/// @param element 获取下标的元素
- (NSUInteger)indexOfElement:(id)element;

/// 是否包含一个元素
/// @param element 包含元素
- (BOOL)containElement:(id)element;

/// 清空容量列表
- (void)clear;

@end

NS_ASSUME_NONNULL_END
