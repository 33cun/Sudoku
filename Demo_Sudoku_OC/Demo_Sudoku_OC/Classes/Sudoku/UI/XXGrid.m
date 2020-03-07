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

- (instancetype)initWithLayer:(id)layer {
    if (self = [super initWithLayer:layer]) {
        _blocks = [NSMutableArray arrayWithCapacity:kBlockCount];
    }
    
    return self;
}

- (void)setupLayer {
    CGFloat width = self.frame.size.width / 3;
    CGFloat height = self.frame.size.height / 3;
    
    for (int i = 0; i < kBlockCount; ++i) {
        XXBlock *block = [[XXBlock alloc] init];
        block.frame = CGRectMake(ceil(i / 3) * width, i % 3 * height, width, height);
        block.index = i;
        
        [self.blocks addObject:block];
        [self addSublayer:block];
    }
    
}

- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];
}

- (void)drawInContext:(CGContextRef)ctx {
    
}

- (void)layoutSublayers {
    //self.backgroundColor = CGColorCreate(CGColorSpaceCreateDeviceRGB(), (CGFloat[]){174.0/255.0, 174.0/255.0, 174.0/255.0});
    self.borderWidth = 2.f;
    
    [self setupLayer];
}


@end
