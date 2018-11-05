//
//  TeachViewController.m
//  dear
//
//  Created by Stephanie Lampotang on 11/4/18.
//  Copyright © 2018 Stephanie Lampotang. All rights reserved.
//

#import "TeachViewController.h"
#import "FoodViewController.h"
@interface TeachViewController ()

@property (weak, nonatomic) IBOutlet UILabel *stateLabel;
@property int score;
@property BOOL correct;
@end

@implementation TeachViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.correct = true;
}

- (IBAction)dogButton:(id)sender {
    self.stateLabel.text = @"Right!";
    [self performSegueWithIdentifier:@"AnimalToFoodSegue" sender:self];
}

- (IBAction)owlButton:(id)sender {
    self.stateLabel.text = @"Wrong!";
    self.correct = false;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    FoodViewController *foodViewController = [segue destinationViewController];
    foodViewController.score = self.score;
    if(self.correct)
    {
        foodViewController.score += 1;
    }
}


@end
