//
//  AbstractionBridge.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/16.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Implementor.h"

NS_ASSUME_NONNULL_BEGIN

@interface AbstractionBridge : NSObject

@property (nonatomic,strong) Implementor *implementor;

- (void)Operation;

@end

NS_ASSUME_NONNULL_END
