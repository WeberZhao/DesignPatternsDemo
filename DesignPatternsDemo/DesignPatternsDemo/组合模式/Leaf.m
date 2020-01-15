//
//  Leaf.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/15.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "Leaf.h"

@implementation Leaf

- (void)add:(AbstractComponent *)c{
    NSLog(@"树叶节点不能添加子节点");
}

- (void)remove:(AbstractComponent *)c{
    NSLog(@"树叶节点不能删除子节点");
}

- (void)display{
    NSLog(@"%@", self.name);
}

@end
