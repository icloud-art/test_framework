//
//  ViewController.m
//  ABSDKDemo
//
//  Created by Leo on 2018/11/29.
//  Copyright © 2018 Leo. All rights reserved.
//

#import "ViewController.h"
//#import <ABAuthenticationKit/ABAuthenticationKit.h>
//#import <ABAuthBaseKit/ABAuthBaseKit.h>

#import <CLNetStaticFramework/CLNetAPI.h>
#import <CLNetStaticFramework/CLNetStaticFramework.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    UIButton *testNetBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    testNetBtn.frame = CGRectMake(50, 200, 250, 60);
    testNetBtn.backgroundColor = [UIColor blueColor];
    [testNetBtn setTitle:@"测试网络请求framework" forState:UIControlStateNormal];
    [testNetBtn addTarget:self action:@selector(testNetFrameWork) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testNetBtn];
    
    
    UIButton *testLiveDetect = [UIButton buttonWithType:UIButtonTypeCustom];
    testLiveDetect.frame = CGRectMake(50, 200 + 100, 250, 60);
    testLiveDetect.backgroundColor = [UIColor blueColor];
    [testLiveDetect setTitle:@"测试活体检测framework" forState:UIControlStateNormal];
    [testLiveDetect addTarget:self action:@selector(testLiveDetect) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testLiveDetect];
}

- (void)testLiveDetect {
    [CLLiveDetect startLiveDetectWithViewControler:self complete:^(BOOL success, NSError * _Nonnull error) {
        
    }];
}

- (void)testNetFrameWork {
    [CLNetAPI testRequestAPI];
}


@end
