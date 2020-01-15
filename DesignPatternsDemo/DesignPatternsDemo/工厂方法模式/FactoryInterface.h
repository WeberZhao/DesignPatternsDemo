//
//  FactoryInterface.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ProductInterface;

@protocol FactoryInterface <NSObject>
- (id <ProductInterface>)createObj;
@end

NS_ASSUME_NONNULL_END
