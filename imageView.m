//
//  imageView.m
//  segmentedControll_test
//
//  Created by 鹏 刘 on 16/9/1.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "imageView.h"

@interface imageView()
@property (nonatomic,strong)UIImageView *imageView;

@end

@implementation imageView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 73, self.frame.size.width, 600)];
        [self imageViewData];
    }

    return self;
}

- (void)imageViewData
{
    UIImage *image1 = [UIImage imageNamed:@"dog 1"];
    UIImage *image2 = [UIImage imageNamed:@"dog 2"];
    UIImage *image3 = [UIImage imageNamed:@"dog 3"];
    UIImage *image4 = [UIImage imageNamed:@"dog 4"];
    UIImage *image5 = [UIImage imageNamed:@"dog 5"];
    
    self.imageView.animationImages = [NSArray arrayWithObjects:image1,image2,image3,image4,image5, nil];
    self.imageView.animationDuration = 9;
    self.imageView.animationRepeatCount = 0;
    
    
}



@end
