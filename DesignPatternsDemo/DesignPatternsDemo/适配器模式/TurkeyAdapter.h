//
//  TurkeyAdapter.h
//  DesignPatternsDemo
//
//  Created by Weber on 2019/11/8.
//  Copyright © 2019 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WildTurkey.h"
#import "DuckInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface TurkeyAdapter : NSObject<DuckInterface>

@property (nonatomic,strong) WildTurkey *turkey;

@end

NS_ASSUME_NONNULL_END
