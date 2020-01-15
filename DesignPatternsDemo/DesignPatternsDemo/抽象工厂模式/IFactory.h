//
//  IFactory.h
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IUser.h"
#import "IDepartment.h"

NS_ASSUME_NONNULL_BEGIN



@protocol IFactory <NSObject>
- (id<IUser>)createUser;
- (id<IDepartment>)createDepartment;
@end

NS_ASSUME_NONNULL_END
