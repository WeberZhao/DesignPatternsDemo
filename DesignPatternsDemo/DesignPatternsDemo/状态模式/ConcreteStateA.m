//
//  ConcreteStateA.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "ConcreteStateA.h"
#import "StateContext.h"
#import "ConcreteStateB.h"

@implementation ConcreteStateA

- (void)Handle:(StateContext *)context{
    context.state = [ConcreteStateB new];
}

@end
