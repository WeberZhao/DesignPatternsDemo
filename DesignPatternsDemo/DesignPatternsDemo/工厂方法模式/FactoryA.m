//
//  FactoryA.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "FactoryA.h"
#import "ProductA.h"

@implementation FactoryA

- (id<ProductInterface>)createObj{
    ProductA *product = [[ProductA alloc] init];
    return product;
}

@end
