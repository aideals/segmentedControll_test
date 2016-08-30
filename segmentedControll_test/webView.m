//
//  webView.m
//  segmentedControll_test
//
//  Created by 鹏 刘 on 16/8/29.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "webView.h"

@interface webView ()
@property (nonatomic,strong)UIWebView *wv;
@end

@implementation webView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.wv = [[UIWebView alloc] initWithFrame:CGRectMake(0, 45, self.bounds.size.width, 500)];
        NSURLRequest *url = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"http:\\www.bing.com"]];
        [self.wv loadRequest:url];
    }
    return self;
}

@end
