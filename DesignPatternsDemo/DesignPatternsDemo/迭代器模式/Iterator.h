//
//  Iterator.h
//  DesignPatternsDemo
//
//  Created by Weber on 2019/11/12.
//  Copyright © 2019 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Iterator <NSObject>

- (BOOL)hasNext;

- (id)next;

- (void)remove;

@end

NS_ASSUME_NONNULL_END
