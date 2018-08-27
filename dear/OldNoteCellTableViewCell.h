//
//  OldNoteCellTableViewCell.h
//  dear
//
//  Created by Stephanie Lampotang on 8/24/18.
//  Copyright © 2018 Stephanie Lampotang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Note.h"

@interface OldNoteCellTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;

- (void) setNote:(Note *)note;
@end
