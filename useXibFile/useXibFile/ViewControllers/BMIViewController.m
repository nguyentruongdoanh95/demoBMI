//
//  BMIViewController.m
//  useXibFile
//
//  Created by NguyenTruongDoanh on 4/27/17.
//  Copyright © 2017 NguyenTruongDoanh. All rights reserved.
//

#import "BMIViewController.h"


@interface BMIViewController ()

@end

@implementation BMIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (IBAction)popupButton:(UIButton *)sender {
    float widthPopUpView = 200;
    float heightPopUpView = 200;
    _popupView = [[PopupView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/(widthPopUpView/2), self.view.frame.size.height/(heightPopUpView/2), widthPopUpView, heightPopUpView)];
   // [self.view addSubview:_popupView];
    [self.navigationController popToViewController:_popupView animated:YES];
}

//  BMI = Cân nặng (kg) / ( Chiều cao(m)* Chiều cao(m))
- (IBAction)resultButton:(UIButton *)sender {
    float weight = [self.myWeight.text floatValue];
    float height = [self.myHeight.text floatValue];
    float resultBMI = (weight / (powf(height, 2))*10000);
    if ((weight <= 0) || (height <= 0)) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Thông báo" message:@"Thông tin nhập vào không hợp lệ. Xin vui lòng kiểm tra lại !" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
        [self presentViewController:alert animated:YES completion:nil];
    } else {
        DetailViewController *detail = [[DetailViewController alloc] init];
        detail.getResult = resultBMI;
        [self.navigationController pushViewController:detail animated:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
