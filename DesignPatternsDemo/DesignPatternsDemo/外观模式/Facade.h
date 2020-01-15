//
//  Facade.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubSystemOne.h"
#import "SubSystemTwo.h"
#import "SubSystemThree.h"

NS_ASSUME_NONNULL_BEGIN

@interface Facade : NSObject

@property (nonatomic,strong) SubSystemOne *one;
@property (nonatomic,strong) SubSystemTwo *two;
@property (nonatomic,strong) SubSystemThree *three;

- (void)MethodA;
- (void)MethodB;

@end

NS_ASSUME_NONNULL_END
