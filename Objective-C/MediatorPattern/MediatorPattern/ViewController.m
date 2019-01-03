//
//  ViewController.m
//  MediatorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "ViewController.h"
#import "DYSColleague1.h"
#import "DYSColleague2.h"
#import "DYSMediator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //初始化一个中介者对象
    DYSMediator *mediator = [[DYSMediator alloc] init];

    //初始化并且让两个同事有相同的中介者对象
    DYSColleague1 *c1 = [[DYSColleague1 alloc] initWithMediator:mediator];
    DYSColleague2 *c2 = [[DYSColleague2 alloc] initWithMediator:mediator];

    //给中介者对象绑定两个要交互的同事对象
    mediator.colleague1 = c1;
    mediator.colleague2 = c2;

    [c1 send:@"吃过饭了吗？"];
    [c2 send:@"没有呢，你打算请客？"];
}

@end
