//
//  ViewController.m
//  dear
//
//  Created by Stephanie Lampotang on 8/23/18.
//  Copyright © 2018 Stephanie Lampotang. All rights reserved.
//

#import "ViewController.h"
#import "OldNoteCellTableViewCell.h"
#import "Note.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *oldNotes;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.oldNotes = [[NSMutableArray alloc] init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    Note *first = [[Note alloc] init];
    first.writer = @"Jillian";
    first.note = @"mememememememeeeee";
    Note *second = [[Note alloc] init];
    second.writer = @"Stephanie";
    second.note = @"amazing!";
    Note *third = [[Note alloc] init];
    third.writer = @"Stara";
    third.note = @"Hawaiiiiii";
    [self.oldNotes addObject:first];
    [self.oldNotes addObject:second];
    [self.oldNotes addObject:third];
    NSLog(@"%lu", (unsigned long)self.oldNotes.count);
    self.tableView.rowHeight = 200;
    [self.tableView reloadData];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (nonnull OldNoteCellTableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    OldNoteCellTableViewCell *cell  = [tableView dequeueReusableCellWithIdentifier:@"oldNoteCell"];
    [cell setNote:self.oldNotes[indexPath.row]];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.oldNotes.count;
}

@end
