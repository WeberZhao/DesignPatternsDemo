//
//  Invoker.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/16.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface Invoker : NSObject

@property (nonatomic,strong) Command *command;

- (void)ExecuteCommand;

@end

NS_ASSUME_NONNULL_END
