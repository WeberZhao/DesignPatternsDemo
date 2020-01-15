//
//  ConcreteArray.m
//  DesignPatternsDemo
//
//  Created by Weber on 2019/11/12.
//  Copyright © 2019 Weber. All rights reserved.
//

#import "ConcreteArray.h"
#import "ConcreteIterator.h"

@implementation ConcreteArray

- (id<Iterator>)createIterator{
    ConcreteIterator *iterator = [[ConcreteIterator alloc] init];
    iterator.array = self;
    
    return iterator;
}

@end
