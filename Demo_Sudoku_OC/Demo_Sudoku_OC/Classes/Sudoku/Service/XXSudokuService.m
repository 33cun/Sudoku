//
//  XXSudokuService.m
//  Demo_Sudoku_OC
//
//  Created by 肖鑫 on 2020/3/7.
//  Copyright © 2020 Eleven. All rights reserved.
//

#import "XXSudokuService.h"

@implementation XXSudokuService

+ (NSArray<NSArray *> *)getInitialGrid {
    return @[
        @[@1, @9, @0, @7, @2, @8, @0, @4, @0],
    ];
}

@end
