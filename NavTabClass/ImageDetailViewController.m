//
//  ImageDetailViewController.m
//  NavTabClass
//
//  Created by Mauricio Meirelles on 3/2/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

#import "ImageDetailViewController.h"

@interface ImageDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgWatch;

@end

@implementation ImageDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _imgWatch.image = [UIImage imageNamed:_watchSelected];
    
    
    self.navigationController.navigationBar.tintColor = [UIColor greenColor];
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    
}




@end
