//
//  ColorViewController.m
//  dear
//
//  Created by Stephanie Lampotang on 11/4/18.
//  Copyright © 2018 Stephanie Lampotang. All rights reserved.
//

#import "ColorViewController.h"
#import "ScoreViewController.h"

@interface ColorViewController ()
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property BOOL correct;
@end

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.correct = true;
}
- (IBAction)roseButton:(id)sender {
    self.answerLabel.text = @"Wrong";
    self.correct = false;
}
- (IBAction)goldButton:(id)sender {
    self.answerLabel.text = @"Right";
    [self performSegueWithIdentifier:@"ColorToScoreSegue" sender:self];
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
    ScoreViewController *scoreViewController = [segue destinationViewController];
    scoreViewController.score = self.score;
    if(self.correct)
    {
        scoreViewController.score += 1;
    }
}


@end
