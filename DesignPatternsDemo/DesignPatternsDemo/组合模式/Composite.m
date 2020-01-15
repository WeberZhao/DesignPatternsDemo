//
//  Composite.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/15.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "Composite.h"

@implementation Composite{
    NSMutableArray <AbstractComponent*>*children;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        children = @[].mutableCopy;
    }
    return self;
}

- (void)add:(AbstractComponent *)c{
    [children addObject:c];
}

- (void)remove:(AbstractComponent *)c{
    [children removeObject:c];
}

- (void)display{
    NSLog(@"%@", self.name);
    for(AbstractComponent *component in children){
        [component display];
    }
}


@end
