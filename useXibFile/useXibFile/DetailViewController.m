//
//  DetailViewController.m
//  useXibFile
//
//  Created by NguyenTruongDoanh on 4/27/17.
//  Copyright © 2017 NguyenTruongDoanh. All rights reserved.
//

#import "DetailViewController.h"
#import "NutritionListViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self updateResult:self.getResult];
    self.viewBackground.layer.cornerRadius = 10;
    self.viewBackground.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateResult:(float)result {
    self.showResult.text = [NSString stringWithFormat:@"%.2f", result];
    [self checkResultBeforeShowDetail:result];
 }
-(void)checkResultBeforeShowDetail:(float)result {
    if (result < 18.5) {
        self.textDetail.text = @"Gầy.";
    } else if (( 18.5 <= result) && (result <= 24)) {
        self.textDetail.text = @"Bình thường.";
    } else if (result == 25) {
        self.textDetail.text = @"Thừa cân.";
    } else if ((result > 25) && (result <= 29.9)) {
        self.textDetail.text = @"Tiền béo phì.";
    } else if ((result >= 30) && (result <= 34.9)) {
        self.textDetail.text = @"Béo phì I.";
    } else if ((result >= 35) && (result <= 39.9)) {
        self.textDetail.text = @"Béo phì II.";
    } else {
        self.textDetail.text = @"Béo phì III.";
    }
}
- (IBAction)nutritionButton:(UIButton *)sender {
    [self.navigationController pushViewController:[[NutritionListViewController alloc] init] animated:YES];
}
@end
