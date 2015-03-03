//
//  ViewController.m
//  NavTabClass
//
//  Created by Mauricio Meirelles on 3/2/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

#import "ViewController.h"
#import "ImageDetailViewController.h"
#import "ViewControllerModal.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *appleWatchModels;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    appleWatchModels = [[NSMutableArray alloc] initWithObjects:@"WATCH 38mm",
                                                               @"WATCH 42mm",
                                                               @"WATCH Sport 38mm",
                                                               @"WATCH Sport 42mm",
                                                               @"WATCH Edition 38mm",
                                                               @"WATCH Edition 42mm", nil];
    
    
    
    
    
    
    
    

}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return appleWatchModels.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    UILabel *lblTitle = (UILabel *)[cell viewWithTag:10];
    
    lblTitle.text = appleWatchModels[indexPath.row];
    
    return cell;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"showWatchImage"])
    {
        ImageDetailViewController *imgVC = (ImageDetailViewController *)segue.destinationViewController;
        imgVC.watchSelected = appleWatchModels[[[_tableView indexPathForCell:(UITableViewCell *)sender] row]];
    }
    else if([segue.identifier isEqualToString:@"showModal"])
    {
        
        UINavigationController *nvc = (UINavigationController *)segue.destinationViewController;
        
        ViewControllerModal *vcm = (ViewControllerModal *)nvc.viewControllers[0];
        
        vcm.strFromMaster = @"Foi do master";
    }
}

@end
