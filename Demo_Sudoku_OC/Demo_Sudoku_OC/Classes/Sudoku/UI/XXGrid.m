//
//  XXGrid.m
//  Demo_Sudoku_OC
//
//  Created by 肖鑫 on 2020/3/7.
//  Copyright © 2020 Eleven. All rights reserved.
//

#import "XXGrid.h"
#import "XXBlock.h"


@interface XXGrid ()

@property (nonatomic, strong) NSMutableArray<XXBlock *> *blocks;

@end


@implementation XXGrid

#pragma mark - Life Cycle
- (instancetype)init {
    if (self = [super init]) {
        _blocks = [NSMutableArray arrayWithCapacity:kBlockCount];
        
        self.borderWidth = 2.f;
        
        [self initLayer];
    }
    
    return self;
}

- (void)layoutSublayers {
    [super layoutSublayers];
    
    [self setupLayer];
}


#pragma mark - Layer
- (void)initLayer {
    for (int i = 0; i < kBlockCount; ++i) {
        XXBlock *block = [[XXBlock alloc] init];
        block.index = i;
        
        [self.blocks addObject:block];
    }
}

- (void)setupLayer {
    CGFloat width = self.frame.size.width / 3;
    CGFloat height = self.frame.size.height / 3;
    
    for (int i = 0; i < self.blocks.count; ++i) {
        NSInteger r = ceil(i / 3);
        NSInteger c = i % 3;
        
        XXBlock *block = self.blocks[i];
        block.frame = CGRectMake(r * width, c * height, width, height);
        
        [self addSublayer:block];
    }
}


#pragma mark - Data
- (void)loadData:(NSArray<NSArray *> *)data {
    for (int i = 0; i < data.count; ++i) {
        XXBlock *block = self.blocks[i];
        NSArray *blockValues = data[i];
        
        [block loadData:blockValues];
    }
}


#pragma mark - Event Response


#pragma mark - Public Methods


#pragma mark - Private Methods


#pragma mark - Delegate


#pragma mark - Setter


#pragma mark - Getter



@end
