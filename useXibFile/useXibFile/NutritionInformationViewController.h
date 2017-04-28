//
//  NutritionInformationViewController.h
//  useXibFile
//
//  Created by NguyenTruongDoanh on 4/28/17.
//  Copyright © 2017 NguyenTruongDoanh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NutritionInformationViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameProduct;
@property (weak, nonatomic) IBOutlet UIView *viewBackground;
@property (weak, nonatomic) IBOutlet UILabel *countProducts;

- (IBAction)changeCountProducts:(UIStepper *)sender;
- (IBAction)buyButton:(UIButton *)sender;

@property NSString *nutritionData;
@end
