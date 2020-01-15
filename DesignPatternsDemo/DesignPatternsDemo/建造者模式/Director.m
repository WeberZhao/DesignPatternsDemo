//
//  Director.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "Director.h"

@implementation Director

- (void)createPerson{
    [self.builder BuildHead];
    [self.builder BuildBody];
    [self.builder BuildArmLeft];
    [self.builder BuildArmRight];
    [self.builder BuildLegLeft];
    [self.builder BuildLegRight];
}

@end
