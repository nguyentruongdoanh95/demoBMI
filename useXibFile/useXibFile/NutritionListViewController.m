//
//  NutritionListViewController.m
//  useXibFile
//
//  Created by NguyenTruongDoanh on 4/28/17.
//  Copyright © 2017 NguyenTruongDoanh. All rights reserved.
//

#import "NutritionListViewController.h"
#import "NutritionCell.h"
#import "NutritionInformationViewController.h"

@interface NutritionListViewController ()

@end

@implementation NutritionListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Nutrition";
    [self.nutritionTableView registerNib:[UINib nibWithNibName:@"NutritionCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
    [self createData];
}
-(void)createData {
    /* Cách 1
     self.dictNutrition = [[NSMutableDictionary alloc] init];
     [self.dictNutrition setObject:[NSArray arrayWithObjects:@"Xà lách", @"Bông cải", @"Dưa leo", nil] forKey:@"Rau"];
     [self.dictNutrition setObject:[NSArray arrayWithObjects:@"Thịt bò", @"Thịt heo", @"Thịt gà", @"Cá ngừ", @"Cá hồi", nil] forKey:@"Thịt"];
     [self.dictNutrition setObject:[NSArray arrayWithObjects:@"Serious Mass 6 Lbs", @"Protein 5 Lbs", @"BSN True mass", @"Muscle Mass Gainer TH030", @"100% Casein Protein Gold", nil] forKey:@"Sữa"];
     [self.dictNutrition setObject:[NSArray arrayWithObjects:@"Ngũ cốc", @"Cơm", nil] forKey:@"Tinh bột"];
     */
    
    // Cách 2
    _dictNutrition = @{
                       @"Rau"     : [NSArray arrayWithObjects:@"Xà lách", @"Bông cải", @"Dưa leo", nil],
                       @"Thịt"    : [NSArray arrayWithObjects:@"Thịt bò", @"Thịt heo", @"Thịt gà", @"Cá ngừ", @"Cá hồi", nil],
                       @"Sữa"     : [NSArray arrayWithObjects:@"Serious Mass 6 Lbs", @"Protein 5 Lbs", @"BSN True mass", @"Muscle Mass Gainer TH030", @"100% Casein Protein Gold", nil],
                       @"Tinh bột" : [NSArray arrayWithObjects:@"Ngũ cốc", @"Cơm", nil]
                       };

}

#pragma mark UITableViewDatasource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _dictNutrition.allKeys.count;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @"Rau";
    } else if (section == 1) {
        return @"Thịt";
    } else if (section == 2) {
        return @"Tinh bột";
    } else {
        return @"Sữa";
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 3;
    } else if (section == 1) {
        return 5;
    } else if (section == 2) {
        return 2;
    } else {
        return 5;
    }
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NutritionCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    switch (indexPath.section) {
        case 0:
            [self dataWithSession:cell key:@"Rau" indexPath:indexPath];
            break;
        case 1:
            [self dataWithSession:cell key:@"Thịt" indexPath:indexPath];
            break;
        case 2:
            [self dataWithSession:cell key:@"Tinh bột" indexPath:indexPath];
            break;
        default:
            [self dataWithSession:cell key:@"Sữa" indexPath:indexPath];
            break;
    }
    return cell;
}

-(void)dataWithSession:(NutritionCell *)cell key:(NSString *)string indexPath:(NSIndexPath *)indexPath {
    cell.detailNutrition.text = [NSString stringWithFormat:@"%@", [[_dictNutrition valueForKey:string] objectAtIndex:indexPath.row]];
}

#pragma mark UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //NutritionCell *cell;
    NutritionInformationViewController *nutrition = [[NutritionInformationViewController alloc] init];
    switch (indexPath.section) {
        case 0:
            nutrition.nutritionData = [NSString stringWithFormat:@"%@", [[_dictNutrition valueForKey:@"Rau"] objectAtIndex:indexPath.row]];
            break;
        case 1:
            nutrition.nutritionData = [NSString stringWithFormat:@"%@", [[_dictNutrition valueForKey:@"Thịt"] objectAtIndex:indexPath.row]];
            break;
        case 2:
            nutrition.nutritionData = [NSString stringWithFormat:@"%@", [[_dictNutrition valueForKey:@"Tinh bột"] objectAtIndex:indexPath.row]];
            break;
        default:
            nutrition.nutritionData = [NSString stringWithFormat:@"%@", [[_dictNutrition valueForKey:@"Sữa"] objectAtIndex:indexPath.row]];
            break;
    }
    [self.navigationController pushViewController:nutrition animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
