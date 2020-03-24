//
//  ConcreteMediator.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/23.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "AbstractMediator.h"
#import "ConcreteColleage1.h"
#import "ConcreteColleage2.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConcreteMediator : AbstractMediator

@property (nonatomic,strong) ConcreteColleage1 *colleage1;
@property (nonatomic,strong) ConcreteColleage2 *colleage2;

@end

NS_ASSUME_NONNULL_END
