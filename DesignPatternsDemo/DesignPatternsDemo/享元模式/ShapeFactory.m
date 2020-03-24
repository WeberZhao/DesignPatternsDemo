//
//  ShapeFactory.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/23.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "ShapeFactory.h"
#import "Circle.h"

@implementation ShapeFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _circleMap = @{}.mutableCopy;
    }
    return self;
}

- (id<Shape>)circleForColor:(NSString *)color{
    Circle *circle = _circleMap[color];
    if(circle == nil){
        circle = [[Circle alloc] initWithColor:color];
        [_circleMap setObject:circle forKey:color];
    }
    return circle;
}

@end
