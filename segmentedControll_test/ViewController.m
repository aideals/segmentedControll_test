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
@property (nonatomic,strong)UIWebView *wv;
@property (nonatomic,strong)UIImageView *iv;
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
    
    imageView *image = [[imageView alloc] init];
    self.iv = image;
    
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
