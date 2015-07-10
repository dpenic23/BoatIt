//
//  PostListViewController.m
//  BoatIt
//
//  Created by Academy 5 on 10/07/15.
//  Copyright (c) 2015 Academy 5. All rights reserved.
//

#import "PostListViewController.h"

@interface PostListViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *posts;

@end

@implementation PostListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Posts";
    //self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

#pragma mark - UITableView datasource & delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.posts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PostCell"];
    
    //Post *post = self.posts[indexPath.row];
    
    //cell.textLabel.text = post.title;
    //cell.detailTextLabel.text = post.imageUrl;
    
    //cell.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:post.imageUrl]]];
    
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Do stuff here
}


@end
