//
//  Boss.m
//  OC(串讲)-协议实现买票
//
//  Created by qingyun on 16/4/16.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "Boss.h"

@implementation Boss
-(void)want:(Person1 *)p0
{
    NSLog(@"%@ want to goto a movie",self);
    p0.movieBlock=^void(NSString *str){
        NSLog(@"info=%@",str);
    };
}
@end
