//
//  XXBlock.m
//  Demo_Sudoku_OC
//
//  Created by 肖鑫 on 2020/3/7.
//  Copyright © 2020 Eleven. All rights reserved.
//

#import "XXBlock.h"
#import "XXLattice.h"


@implementation XXBlock

- (instancetype)init {
    if (self = [super init]) {
        
    }
    
    return self;
}

- (void)setupLayer {
    CGFloat width = self.frame.size.width / 3;
    CGFloat height = self.frame.size.height / 3;
    
    for (int i = 0; i < kLatticeCount; ++i) {
        XXLattice *lattice = [[XXLattice alloc] init];
        lattice.frame = CGRectMake(ceil(i / 3) * width, i % 3 * height, width, height);;
        lattice.index = i;
        
        [self addSublayer:lattice];
    }
}

- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];
}

- (void)layoutSublayers {
    self.borderWidth = 1.f;
    
    [self setupLayer];
}


@end
