//
//  SqlserverFactory.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "SqlserverFactory.h"
#import "SqlserverUser.h"
#import "SqlserverDepartment.h"

@implementation SqlserverFactory

- (id<IUser>)createUser{
    return [[SqlserverUser alloc] init];
}

- (id<IDepartment>)createDepartment{
    return [[SqlserverDepartment alloc] init];
}

@end
