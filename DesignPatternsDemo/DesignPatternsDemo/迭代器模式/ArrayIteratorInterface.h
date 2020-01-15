//
//  ArrayIteratorInterface.h
//  DesignPatternsDemo
//
//  Created by Weber on 2019/11/12.
//  Copyright © 2019 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

NS_ASSUME_NONNULL_BEGIN

@protocol ArrayIteratorInterface <NSObject>

- (id<Iterator>)createIterator;

@end

NS_ASSUME_NONNULL_END
