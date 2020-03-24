//
//  Colleague.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/23.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "Colleague.h"

@implementation Colleague

- (void)sendMessage:(NSString *)message{
    [self.mediator sendMessage:message colleage:self];
}

@end
