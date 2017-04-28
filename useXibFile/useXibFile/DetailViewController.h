//
//  DetailViewController.h
//  useXibFile
//
//  Created by NguyenTruongDoanh on 4/27/17.
//  Copyright © 2017 NguyenTruongDoanh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *showResult;
@property (weak, nonatomic) IBOutlet UILabel *textDetail;
@property (weak, nonatomic) IBOutlet UIView *viewBackground;

- (IBAction)nutritionButton:(UIButton *)sender;
@property float getResult;
@end
