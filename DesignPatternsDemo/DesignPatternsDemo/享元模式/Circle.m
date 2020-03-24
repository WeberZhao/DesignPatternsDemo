//
//  Circle.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/23.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (instancetype)initWithColor:(NSString *)color{
    self = [super init];
    if(self){
        _color = color;
    }
    return self;
}

- (void)draw{
    NSLog(@"%s", __FUNCTION__);
}


@end
