//
//  BMIViewController.h
//  useXibFile
//
//  Created by NguyenTruongDoanh on 4/27/17.
//  Copyright © 2017 NguyenTruongDoanh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "PopupView.h"

@interface BMIViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *myHeight;
@property (weak, nonatomic) IBOutlet UITextField *myWeight;
@property PopupView *popupView;
- (IBAction)popupButton:(UIButton *)sender;
- (IBAction)resultButton:(UIButton *)sender;

@end
