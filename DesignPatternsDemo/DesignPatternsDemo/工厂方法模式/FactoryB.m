//
//  FactoryB.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "FactoryB.h"
#import "ProductB.h"

@implementation FactoryB
- (id<ProductInterface>)createObj{
    ProductB *product = [[ProductB alloc] init];
    return product;
}

@end
