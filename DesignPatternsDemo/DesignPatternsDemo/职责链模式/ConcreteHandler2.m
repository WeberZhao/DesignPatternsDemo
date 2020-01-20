//
//  ConcreteHandler2.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/20.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "ConcreteHandler2.h"

@implementation ConcreteHandler2
- (void)HandleRequest:(int)request{
    if(request < 20){
        NSLog(@"处理请求:%s", __FUNCTION__);
    }else{
        [self.nextResponse HandleRequest:request];
    }
}
@end
