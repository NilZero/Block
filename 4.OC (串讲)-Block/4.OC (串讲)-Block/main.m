//
//  main.m
//  4.OC (串讲)-Block
//
//  Created by qingyun on 16/4/16.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boss.h"

void (^block1)(void);
void (^block2)(int,int)=^(int a,int b){
    block1();//代码块也可以嵌套调用
    NSLog(@"有参数无返回值的代码块...%d",a+b);
};
int (^block3)(int,int)=^(int a,int b){
    NSLog(@"有参数有返回值的block....%d",a-b);
    return a-b;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        block1();
        block2(11,22);
        NSLog(@">>%d",block3(44,21));
        
        Boss *boss=[Boss new];
        Person1 *p1=[Person1 new];
        [boss want:p1];
        [p1 takemovie];
    }
    return 0;
}
void (^block1)(void)=^(void){
    NSLog(@"无参数无返回值的代码块...");
};