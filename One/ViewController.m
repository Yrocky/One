//
//  ViewController.m
//  One
//
//  Created by admin on 16/2/2.
//  Copyright © 2016年 HLL. All rights reserved.
//

#import "ViewController.h"
#import "HLLRequestManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[HLLRequestManager shareRequestManager] requestManager_requestMusicDetailWithMusicId:@"31" result:^(id data, NSError *error) {
        NSLog(@"%@",data);
        NSLog(@"error:%@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
