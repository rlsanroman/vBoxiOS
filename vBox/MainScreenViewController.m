//
//  MainScreenViewController.m
//  vBox
//
//  Created by Rosbel Sanroman on 11/30/14.
//  Copyright (c) 2014 rosbelSanroman. All rights reserved.
//

#import "MainScreenViewController.h"
#import "MyStyleKit.h"
#import "GoogleMapsViewController.h"

@interface MainScreenViewController ()<GoogleMapsViewControllerDelegate>

@end

@implementation MainScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	[self.startDriveButton setBackgroundImage:[MyStyleKit imageOfVBoxButtonWithButtonColor:[MyStyleKit mySkyBlue]] forState:UIControlStateNormal];
	[self.drivingHistoryButton setBackgroundImage:[MyStyleKit imageOfVBoxButtonWithButtonColor:[MyStyleKit myOrange]] forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	// Get the new view controller using [segue destinationViewController].
	// Pass the selected object to the new view controller.
	if([segue.identifier isEqualToString:@"googleMapsSegue"])
	{
		GoogleMapsViewController *googleMaps = segue.destinationViewController;
		googleMaps.delegate = self;
	}
}

#pragma mark - GoogleMapsViewControllerDelegate Methods

-(void)didTapStopRecordingButton
{
	[self dismissViewControllerAnimated:YES completion:nil];
}

@end