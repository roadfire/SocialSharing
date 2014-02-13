//
//  RFSViewController.m
//  SocialSharing
//
//  Created by Josh Brown on 2/13/14.
//  Copyright (c) 2014 Roadfire Software. All rights reserved.
//

#import "RFSViewController.h"

@interface RFSViewController ()

@end

@implementation RFSViewController

- (IBAction)share:(id)sender
{
    NSString *text = @"How to add Facebook/Twitter sharing to an iOS app";
    NSURL *url = [NSURL URLWithString:@"http://roadfiresoftware.com/blog/"];
    UIImage *image = [UIImage imageNamed:@"roadfire-icon-square-200"];
    
    UIActivityViewController *controller =
    [[UIActivityViewController alloc]
     initWithActivityItems:@[text, url, image]
     applicationActivities:nil];
    
    controller.excludedActivityTypes = @[UIActivityTypePostToWeibo,
                                         UIActivityTypeMessage,
                                         UIActivityTypeMail,
                                         UIActivityTypePrint,
                                         UIActivityTypeCopyToPasteboard,
                                         UIActivityTypeAssignToContact,
                                         UIActivityTypeSaveToCameraRoll,
                                         UIActivityTypeAddToReadingList,
                                         UIActivityTypePostToFlickr,
                                         UIActivityTypePostToVimeo,
                                         UIActivityTypePostToTencentWeibo,
                                         UIActivityTypeAirDrop];
    
    [self presentViewController:controller animated:YES completion:nil];
}

@end
