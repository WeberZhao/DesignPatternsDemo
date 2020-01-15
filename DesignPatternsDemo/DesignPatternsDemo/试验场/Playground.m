//
//  Playground.m
//  DesignPatternsDemo
//
//  Created by Weber on 2020/1/14.
//  Copyright © 2020 Weber. All rights reserved.
//

#import "Playground.h"
#import "Context.h"
#import "ConcreteStrategyA.h"
#import "ConcreteStrategyB.h"

#import "FactoryA.h"
#import "FactoryB.h"
#import "ProductInterface.h"

#import "AccessFactory.h"
#import "SqlserverFactory.h"

#import "ConcreteArray.h"
#import "Iterator.h"

#import "ConcreteClassA.h"
#import "ConcreteClassB.h"

#import "ConcreteStateB.h"
#import "StateContext.h"
#import "ConcreteStateA.h"

#import "Composite.h"
#import "Leaf.h"

@implementation Playground

- (void)testStrate{
    Context *context = [[Context alloc] init];
    
    ConcreteStrategyA *algthomA = [[ConcreteStrategyA alloc] init];
    context.strategy = algthomA;
    [context contextInterface];
    
    ConcreteStrategyB *algthomB = [[ConcreteStrategyB alloc] init];
    context.strategy = algthomB;
    [context contextInterface];
}

- (void)testFactory{
    id <FactoryInterface>factory = [[FactoryA alloc] init];
    id <ProductInterface>product = [factory createObj];
    [product productMethod];
    
    factory = [[FactoryB alloc] init];
    product = [factory createObj];
    [product productMethod];
}


- (void)testAbstractFactory{
    ////使用sql server
    id <IFactory>factory = [[SqlserverFactory alloc] init];
    id <IUser>user = [factory createUser];
    id <IDepartment>department = [factory createDepartment];
    [user userMethod];
    [department departmentMethod];
    
    ///切换到access
    factory = [[AccessFactory alloc] init];
    user = [factory createUser];
    department = [factory createDepartment];
    [user userMethod];
    [department departmentMethod];
}


- (void)testIterator{
    ConcreteArray *array = [[ConcreteArray alloc] init];
    id<Iterator>iterator = [array createIterator];
    while (iterator.hasNext) {
        [iterator next];
    }
}


- (void)testTemplateMethod{
    AbstractClass *c = nil;
    c = [ConcreteClassA new];
    [c TemplateMethod];
    
    c = [ConcreteClassB new];
    [c TemplateMethod];
}

- (void)testState{
    StateContext *c = [StateContext new];
    ///初始状态
    c.state = [ConcreteStateA new];
    ///请求一次，切换一次状态
    [c request];
    ///切换状态
    [c request];
}


- (void)testComponent{
    Composite *root = [Composite new];
    root.name = @"root";
    [root add:[Leaf new]];
    [root add:[Leaf new]];
    
    Composite *comp = [Composite new];
    [comp add:[Leaf new]];
    [comp add:[Leaf new]];
    
    [root add:comp];
    
    Composite *comp2 = [Composite new];
    [comp2 add:[Leaf new]];
    [comp2 add:[Leaf new]];
    
    [comp add:comp2];
    
    [root display];
}

@end
