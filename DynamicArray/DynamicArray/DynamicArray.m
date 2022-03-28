//
//  DynamicArray.m
//  DynamicArray
//
//  Created by 郭瑞泽 on 2022/3/9.
//

#import "DynamicArray.h"

static const NSUInteger DEFAULT_CAPACITY = 10;
static const NSUInteger ELEMENT_NOT_FOUND = NSNotFound;

@interface DynamicArray ()
@property (nonatomic, strong) NSMutableArray *list;
@property (nonatomic, assign) NSUInteger size;
@property (nonatomic, assign) NSUInteger in_count;
@end

@implementation DynamicArray

- (instancetype)init {
    return [self initWithCapacity:DEFAULT_CAPACITY];
}
 
- (instancetype)initWithCapacity:(NSUInteger)capacity {
    NSUInteger cap = capacity <= 0 ? DEFAULT_CAPACITY : capacity;
    self.in_count = cap;
    self = [super init];
    if (self) {
        self.list = [[NSMutableArray alloc] initWithCapacity:cap];
    }
    return self;
}

- (void)add:(id)element {
    [self addIndex:self.size element:element];
}

- (id)set:(NSUInteger)index value:(id)element {
    [self rangeOfIndex:index];
    id oldElement = self.list[index];
    self.list[index] = element;
    return oldElement ;
}

- (void)addIndex:(NSUInteger)index element:(id)element {
    [self rangeOfIndexForAdd:index];
    
    [self ensureCapaticy: self.size + 1];
    
    for (NSUInteger i = self.size; i > index; i--) {
        self.list[i] = self.list[i-1];
    }
    self.list[index] = element;
    self.size++;
}

- (id)removeIndex:(NSUInteger)index {
    [self rangeOfIndex:index];
    id oldElement = self.list[index];
    
    for (NSUInteger i = index; i < self.size-1; i++) {
        self.list[i] = self.list[i+1];
    }
    /// TODO:
    ///
    self.list[self.size--] = [NSNull null];
    return oldElement;
}

- (void)removeElement:(id)element {
    [self removeIndex: [self indexOfElement:element]];
}

- (id)get:(NSUInteger)index {
    [self rangeOfIndex:index];
    return self.list[index] ;
}

- (NSUInteger)indexOfElement:(id)element {
    NSUInteger result = ELEMENT_NOT_FOUND;
    for (NSUInteger i = 0; i < self.size; i++) {
        if (self.list[i] == element) {
            result = i;
        }
    }
    return result;
}

- (id)lastElement {
    return self.list[self.size-1];
}

- (id)firstElement {
    return self.list[0];
}

- (BOOL)isEmpty {
    return self.size == 0;
}

- (BOOL)containElement:(id)element {
    return [self indexOfElement:element] != ELEMENT_NOT_FOUND;
}

- (void)clear {
    /// TODO:
    ///
    for (int i = 0; i < self.size; i++) {
        self.list[i] = [NSNull null];
    }
    self.size = 0;

}

- (void)rangeOfIndex:(NSUInteger)index {
    NSAssert2(!(index < 0 || index >= self.size), @"%@不在数组下标范围内，当前数组Count=%@", @(index), @(self.size));
}

- (void)rangeOfIndexForAdd:(NSUInteger)index {
    NSAssert2(!(index < 0 || index > self.size), @"%@不在数组下标范围内，当前数组Count=%@", @(index), @(self.size));
}

- (void)ensureCapaticy:(NSUInteger)capaticy {
    NSUInteger oldCapaticy = self.in_count;
    if (capaticy < oldCapaticy) return;
    NSUInteger newCapaticy = oldCapaticy + (oldCapaticy >> 1);
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:newCapaticy];
    self.in_count = newCapaticy;
    for (NSUInteger i=0; i<array.count; i++) {
        array[i] = self.list[i];
    }
    self.list = array;
}

- (NSString *)description
{
    NSMutableString *string = [[NSMutableString alloc] init];
    for (NSUInteger i = 0; i < self.size; i++) {
        if (i != 0) {
            [string appendFormat:@","];
        }
        [string appendFormat:@"%@", self.list[i]];

    }
    return [NSString stringWithFormat:@"size = %@ [%@]", @(self.size), string];
}

@end
