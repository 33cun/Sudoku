//
//  ViewController.m
//  Demo_Sudoku_OC
//
//  Created by 肖鑫 on 2020/3/6.
//  Copyright © 2020 Eleven. All rights reserved.
//

#import "ViewController.h"
#import "XXGrid.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    XXGrid *aa = [XXGrid layer];
    CGRect rect = CGRectMake(kMargin, 100, (SCREEN_WIDTH - kMargin * 2), (SCREEN_WIDTH - kMargin * 2));
    [aa setFrame:rect];
    [self.view.layer addSublayer:aa];
}


@end
