//
//  ViewController1.m
//  VCtest
//
//  Created by Regan Dawson on 12/3/18.
//  Copyright © 2018 APE. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"%@ viewWillAppear", NSStringFromClass(self.class));
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"%@ viewDidAppear", NSStringFromClass(self.class));
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"%@ viewWillDisappear", NSStringFromClass(self.class));
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"%@ viewDidDisappear", NSStringFromClass(self.class));
}

@end
