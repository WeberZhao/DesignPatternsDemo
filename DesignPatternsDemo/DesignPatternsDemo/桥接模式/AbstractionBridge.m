//
//  AbstractionBridge.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/16.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "AbstractionBridge.h"

@implementation AbstractionBridge

- (void)Operation{
    [self.implementor Operation];
}

@end
