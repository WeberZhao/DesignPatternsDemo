//
//  AccessFactory.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "AccessFactory.h"
#import "AccessUser.h"
#import "AccessDepartment.h"

@implementation AccessFactory

- (id<IUser>)createUser{
    return [[AccessUser alloc] init];
}

- (id<IDepartment>)createDepartment{
    return [[AccessDepartment alloc] init];
}

@end
