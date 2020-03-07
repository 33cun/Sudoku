//
//  XXLattice.m
//  Demo_Sudoku_OC
//
//  Created by 肖鑫 on 2020/3/7.
//  Copyright © 2020 Eleven. All rights reserved.
//

#import "XXLattice.h"

@implementation XXLattice

- (instancetype)init {
    if (self = [super init]) {
        
    }
    
    return self;
}

- (void)setupLayer {
    
}


- (void)layoutSublayers {
    self.backgroundColor = RandomCGColor;
    self.borderWidth = .25f;
    
    [self setupLayer];
}


@end
