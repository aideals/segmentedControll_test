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
@property (nonatomic,strong) UIWebView *wv;
@property (nonatomic,strong) UIImageView *iv;
@property (nonatomic,strong) NSMutableArray *imageArray;
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
    
    self.imageArray = [[NSMutableArray alloc] initWithObjects:[UIImage imageNamed:@"dog 1.png"],[UIImage imageNamed:@"dog 2.png"],[UIImage imageNamed:@"dog 3.png"],[UIImage imageNamed:@"dog 4.png"],[UIImage imageNamed:@"dog 5.png"], nil];
    
    self.iv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 70, self.view.bounds.size.width, 500)];
   
    for (int i = 0; i < self.imageArray.count; i ++) {
        self.iv.image = [self.imageArray objectAtIndex:i];
    }
    
    
    [self webView];
    [self.view addSubview:self.sc];
}

- (UIView *)webView
{
    self.wv = [[UIWebView alloc] initWithFrame:CGRectMake(0, 73, self.view.bounds.size.width, 600)];
    NSURLRequest *url = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://www.163.com"]];
    [self.wv loadRequest:url];
    [self.view addSubview:self.wv];
    return _wv;
}

- (IBAction)changeView:(UISegmentedControl *)seg
{
    NSInteger index = seg.selectedSegmentIndex;
    
    switch (index) {
        case 0:
            [self.iv removeFromSuperview];
            [self webView];
            break;
        case 1:
            [self.wv removeFromSuperview];
            [self.view addSubview:self.iv];
            break;
        
        
        default:
            break;
    }
}




@end
