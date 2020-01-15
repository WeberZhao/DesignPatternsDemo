//
//  ConcreteIterator.m
//  DesignPatternsDemo
//
//  Created by Weber on 2019/11/12.
//  Copyright © 2019 Weber. All rights reserved.
//

#import "ConcreteIterator.h"

@implementation ConcreteIterator

- (BOOL)hasNext{
    NSLog(@"集合到尾了没？");
    return NO;
}

- (id)next{
    NSLog(@"返回集合下一个元素");
    return nil;
}

- (void)remove{
    NSLog(@"移除当前元素");
}

@end
