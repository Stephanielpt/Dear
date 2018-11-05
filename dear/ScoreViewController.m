//
//  ScoreViewController.m
//  dear
//
//  Created by Stephanie Lampotang on 11/4/18.
//  Copyright © 2018 Stephanie Lampotang. All rights reserved.
//

#import "ScoreViewController.h"

@interface ScoreViewController ()
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation ScoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.scoreLabel.text = [NSString stringWithFormat:@"%d",self.score];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
