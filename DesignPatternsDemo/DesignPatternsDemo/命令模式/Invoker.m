//
//  Invoker.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/16.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "Invoker.h"

@implementation Invoker

- (void)ExecuteCommand{
    [self.command Execute];
}
@end
