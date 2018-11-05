//
//  FoodViewController.m
//  dear
//
//  Created by Stephanie Lampotang on 11/4/18.
//  Copyright © 2018 Stephanie Lampotang. All rights reserved.
//

#import "FoodViewController.h"
#import "ColorViewController.h"

@interface FoodViewController ()
@property (weak, nonatomic) IBOutlet UILabel *answerButton;
@property BOOL correct;


@end

@implementation FoodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.correct = true;
}
- (IBAction)pizzaButton:(id)sender {
    self.answerButton.text = @"WRONG!";
    self.correct = false;
}

- (IBAction)iceButton:(id)sender {
    self.answerButton.text = @"RIGHT!";
    [self performSegueWithIdentifier:@"FoodToColorSegue" sender:self];
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
    ColorViewController *colorViewController = [segue destinationViewController];
    colorViewController.score = self.score;
    if(self.correct)
    {
        colorViewController.score += 1;
    }
}


@end
