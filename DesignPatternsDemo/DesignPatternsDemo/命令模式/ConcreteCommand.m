//
//  ConcreteCommand.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/16.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "ConcreteCommand.h"

@implementation ConcreteCommand

- (void)Execute{
    [self.receiver Action];
}

@end
