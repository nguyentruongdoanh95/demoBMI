//
//  NutritionListViewController.h
//  useXibFile
//
//  Created by NguyenTruongDoanh on 4/28/17.
//  Copyright © 2017 NguyenTruongDoanh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NutritionListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *nutritionTableView;
@property NSDictionary *dictNutrition;
@property NSArray *arrKeys;
@property NSArray *arrValues;
@end
