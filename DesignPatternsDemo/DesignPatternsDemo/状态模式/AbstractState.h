//
//  AbstractState.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>

@class StateContext;

NS_ASSUME_NONNULL_BEGIN

@interface AbstractState : NSObject

- (void)Handle:(StateContext*)context;

@end

NS_ASSUME_NONNULL_END
