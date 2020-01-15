//
//  StateContext.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "StateContext.h"

@implementation StateContext

- (void)request{
    [self.state Handle:self];
}

@end
