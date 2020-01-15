//
//  StateContext.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractState.h"

NS_ASSUME_NONNULL_BEGIN

@interface StateContext : NSObject

@property (nonatomic,strong) AbstractState *state;

- (void)request;

@end

NS_ASSUME_NONNULL_END
