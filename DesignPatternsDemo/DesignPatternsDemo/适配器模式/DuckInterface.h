//
//  DuckInterface.h
//  DesignPatternsDemo
//
//  Created by Weber on 2019/11/8.
//  Copyright © 2019 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DuckInterface <NSObject>

- (void)quack;
- (void)fly;

@end

NS_ASSUME_NONNULL_END
