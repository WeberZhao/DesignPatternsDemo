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

#import "RefinedAbstraction.h"
#import "ConcreteImplementorA.h"
#import "ConcreteImplementorB.h"

#import "Receiver.h"
#import "Invoker.h"
#import "ConcreteCommand.h"

#import "Originator.h"
#import "Caretaker.h"

#import "ConcreteHandler1.h"
#import "ConcreteHandler2.h"
#import "ConcreteHandler3.h"

#import "ConcreteColleage1.h"
#import "ConcreteColleage2.h"
#import "ConcreteMediator.h"

#import "ShapeFactory.h"
#import "Circle.h"

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

- (void)testBridgePattern{
    AbstractionBridge *ab = [RefinedAbstraction new];
    ///实现A
    ab.implementor = [ConcreteImplementorA new];
    [ab Operation];
    ///实现B
    ab.implementor = [ConcreteImplementorB new];
    [ab Operation];
}


- (void)testCommandPattern{
    ///执行者
    Receiver *r = [Receiver new];
    ///命令
    Command *c = [ConcreteCommand new];
    c.receiver = r;
    ///调用者
    Invoker *i = [Invoker new];
    i.command = c;
    ///发起执行命令
    [i ExecuteCommand];
}


- (void)testMemento{
    Originator *o = [Originator new];
    o.state = @"ON";
    ///备份
    Caretaker *c = [Caretaker new];
    c.memento = [o createMemento];
    
    o.state = @"OFF";
    ///恢复
    [o setMemento:c.memento];
}


- (void)testResponseChain{
    AbstractHandler *h1 = [ConcreteHandler1 new];
    AbstractHandler *h2 = [ConcreteHandler2 new];
    AbstractHandler *h3 = [ConcreteHandler3 new];
    h1.nextResponse = h2;
    h2.nextResponse = h3;
    
    [h1 HandleRequest:25];
}



- (void)testMediator{
    ConcreteMediator *m = [ConcreteMediator new];
    
    ConcreteColleage1 *c1 = [ConcreteColleage1 new];
    ConcreteColleage2 *c2 = [ConcreteColleage2 new];
    
    m.colleage1 = c1;
    m.colleage2 = c2;
    
    [c1 sendMessage:@"吃了吗？"];
    [c2 sendMessage:@"没吃呢"];
}


- (void)testFlyweight{
    NSArray *colors = @[@"Red", @"Green", @"Blue", @"White", @"Black"];
    ShapeFactory *factory = [ShapeFactory new];
    ///用5个基本颜色模型”创建“出20个对象
    for(int i=0; i<20; i++){
        Circle *c = [factory circleForColor:colors[i%5]];
        c.x = i*2;
        c.y = i*3;
        c.radius = 100;
        [c draw];
    }
}

@end
