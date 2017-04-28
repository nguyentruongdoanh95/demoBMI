//
//  NutritionInformationViewController.m
//  useXibFile
//
//  Created by NguyenTruongDoanh on 4/28/17.
//  Copyright © 2017 NguyenTruongDoanh. All rights reserved.
//

#import "NutritionInformationViewController.h"
#import "PayViewController.h"

@interface NutritionInformationViewController ()

@end

@implementation NutritionInformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _viewBackground.layer.cornerRadius = 10;
    _viewBackground.layer.masksToBounds = YES;
    _nameProduct.text = _nutritionData;
    _countProducts.text = @"Số lượng : 1";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeCountProducts:(UIStepper *)sender {
    int count = sender.value;
    if (sender) {
        count ++;
    } else {
        count --;
    }
    _countProducts.text = [NSString stringWithFormat:@"Số lượng : %d", count];
}

- (IBAction)buyButton:(UIButton *)sender {
    [self.navigationController pushViewController:[[PayViewController alloc] init] animated:YES];
}
@end
