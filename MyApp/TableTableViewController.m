//
//  TableTableViewController.m
//  MyApp
//
//  Created by ITHS on 2020-01-16.
//  Copyright © 2020 ITHS. All rights reserved.
//

#import "TableTableViewController.h"
#import "TableViewCell.h"
#import "CountriesViewControllViewController.h"

@interface TableTableViewController ()

@end

@implementation TableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.navigationItem.title = @"MyTravelBucketList";
    
    ContName = @[@"Europe",
                 @"Africa",
                 @"Asia",
                 @"North America",
                 @"Central and South America",
                 @"Australia and Oceania",
    ];
    
    
    
    ContImage =@[@"Europe.jpg",
                 @"Asia.jpg",
                 @"Africa.jpg",
                 @"NorthA.jpg",
                 @"SouthA.jpg",
                 @"Oceania.jpg",
    ];
    

    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return ContName.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"MyCell" forIndexPath:indexPath];
    
    int row = (int)[indexPath row];
    
    cell.imageView.image = [UIImage imageNamed: ContImage[row]];
    cell.textLabel.text = ContName[row];

    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"GoToDetailedView"]){
        CountriesViewControllViewController *detailView = [ segue destinationViewController];
        NSIndexPath *myIndexPath = [ self.tableView indexPathForSelectedRow];
        
        int row = (int)[myIndexPath row];
        detailView.ContInfo = @[ContImage[row], ContName[row]];
        
            
        
}
    
    
    
}


@end
