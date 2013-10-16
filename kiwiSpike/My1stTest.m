//
//  My1stTest.m
//  kiwiSpike
//
//  Created by u16suzu on 2013/09/10.
//  Copyright (c) 2013年 u16suzu. All rights reserved.
//


#import "Kiwi.h"
#import "User.h"

SPEC_BEGIN(UserSpec)


describe(@"User", ^{
    __block User *taro;
    
    beforeAll(^{
       taro = [[User alloc]init];
    });
    
    it(@"age", ^{
        [[taro.age should] equal:@23];
    });
    
    it(@"age fail", ^{
        [[taro.age shouldNot] equal:@3420429];
    });

    it(@"name", ^{
        [[taro.name should] equal:@"taro"];
    });

    it(@"primitive", ^{
        [[theValue(256) should] equal:theValue(256)];
        [[theValue(YES) shouldNot] equal:theValue(NO)];
    });
    
    // mock: インスタンス自体を偽装する
    it(@"", ^{
        NSString *mockName = [NSString mock];
        NSLog(@"NSString mock: %@", mockName);
    });
    
    // stub: オブジェクトのメソッドだけを偽装する
    it(@"", ^{
        [taro stub:@selector(name) andReturn:@"jiro"];
        [[taro.name shouldNot] equal:@"taro"];
    });
});

SPEC_END