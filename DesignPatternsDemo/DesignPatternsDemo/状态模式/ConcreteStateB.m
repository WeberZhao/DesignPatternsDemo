//
//  ConcreteStateB.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "ConcreteStateB.h"
#import "StateContext.h"
#import "ConcreteStateA.h"

@implementation ConcreteStateB

- (void)Handle:(StateContext *)context{
    context.state = [ConcreteStateA new];
}

@end
