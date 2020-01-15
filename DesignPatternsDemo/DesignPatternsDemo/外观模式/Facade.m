//
//  Facade.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "Facade.h"

@implementation Facade
- (void)MethodA{
    NSLog(@"方法A组");
    [self.one methodOne];
    [self.two methodTwo];
}
- (void)MethodB{
    NSLog(@"方法B组");
    [self.one methodOne];
    [self.three methodThree];
}
@end
