//
//  ConcreteIterator.h
//  DesignPatternsDemo
//
//  Created by Weber on 2019/11/12.
//  Copyright © 2019 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"
#import "ConcreteArray.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConcreteIterator : NSObject<Iterator>

@property (nonatomic,weak) ConcreteArray *array;

@end

NS_ASSUME_NONNULL_END
