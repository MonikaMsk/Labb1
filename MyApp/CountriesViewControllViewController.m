//
//  CountriesViewControllViewController.m
//  MyApp
//
//  Created by ITHS on 2020-01-16.
//  Copyright © 2020 ITHS. All rights reserved.
//

#import "CountriesViewControllViewController.h"
#import "TableTableViewController.h"
#import "TableViewCell.h"

@interface CountriesViewControllViewController ()

@end

@implementation CountriesViewControllViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.DetailedImageView.image = [UIImage imageNamed: _ContInfo[0]];
    self.ContLabel.text = _ContInfo[1];
    self.navigationItem.title = _ContInfo[1];
    
}

@end
