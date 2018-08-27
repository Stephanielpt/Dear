//
//  OldNoteCellTableViewCell.m
//  dear
//
//  Created by Stephanie Lampotang on 8/24/18.
//  Copyright © 2018 Stephanie Lampotang. All rights reserved.
//

#import "OldNoteCellTableViewCell.h"

@implementation OldNoteCellTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setNote:(Note *)note {
    self.usernameLabel.text = note.writer;
    self.noteLabel.text = note.note;
}
@end
