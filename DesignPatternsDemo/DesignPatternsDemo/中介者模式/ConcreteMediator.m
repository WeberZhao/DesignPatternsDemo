//
//  ConcreteMediator.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/23.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "ConcreteMediator.h"

@implementation ConcreteMediator


- (void)sendMessage:(NSString *)message colleage:(Colleague *)colleage{
    if(colleage == self.colleage1){
        [self.colleage2 notifyMessage:message];
    }else{
        [self.colleage1 notifyMessage:message];
    }
}

@end
