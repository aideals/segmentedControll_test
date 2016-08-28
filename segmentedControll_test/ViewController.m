//
//  ViewController.m
//  segmentedControll_test
//
//  Created by 鹏 刘 on 16/8/19.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UISegmentedControl *sc;
@property (nonatomic,copy) NSArray *segmentedControlData;
@property (nonatomic,strong) imageViewController *ic;
@property (nonatomic,strong) UIWebView *webView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    self.segmentedControlData = [[NSArray alloc] initWithObjects:@"Image View",@"Web View", nil];
    self.sc = [[UISegmentedControl alloc] initWithItems:self.segmentedControlData];
    self.sc.frame = CGRectMake(0, 25, self.view.bounds.size.width, 45);
    self.sc.selectedSegmentIndex = 0;
    [self.sc addTarget:self action:@selector(changeView:) forControlEvents:UIControlEventTouchDown];
    
    NSURLRequest *url = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://www.baidu.com"]];
    self.webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 26, self.view.bounds.size.width, 500)];
    [self.webView loadRequest:url];
    
    
    [self.view addSubview:self.webView];
    [self.view addSubview:self.sc];
}

- (IBAction)changeView:(UISegmentedControl *)seg
{
    NSInteger segIndex = seg.selectedSegmentIndex;
    
 
    
}




@end
