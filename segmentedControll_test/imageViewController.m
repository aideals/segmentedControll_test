//
//  imageViewController.m
//  segmentedControll_test
//
//  Created by 鹏 刘 on 16/8/19.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "imageViewController.h"

@interface imageViewController ()
@property (nonatomic,strong) UIButton *button;

@end

@implementation imageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(250, 300, 105, 70)];
    self.button.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:self.button];
}



@end
