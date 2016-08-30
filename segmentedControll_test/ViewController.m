//
//  ViewController.m
//  segmentedControll_test
//
//  Created by 鹏 刘 on 16/8/19.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong)UISegmentedControl *sc;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *segmentedDat = [[NSArray alloc] initWithObjects:@"WebView",@"ImageView",@"ScrollView", nil];
    
    self.sc = [[UISegmentedControl alloc] initWithItems:segmentedDat];
    self.sc.frame = CGRectMake(0, 20, self.view.bounds.size.width, 50);
    self.sc.selectedSegmentIndex = 0;
    [self.sc addTarget:self action:@selector(changeView:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:self.sc];
}

- (IBAction)changeView:(UISegmentedControl *)seg
{
    NSInteger index = seg.selectedSegmentIndex;
    
    if (index == 0) {
        webView *wb = [[webView alloc] init];
        [self.view addSubview:wb];
    }
}




@end
