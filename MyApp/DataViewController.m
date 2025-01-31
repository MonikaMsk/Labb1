//
//  DataViewController.m
//  MyApp
//
//  Created by ITHS on 2020-01-18.
//  Copyright © 2020 ITHS. All rights reserved.
//

#import "DataViewController.h"
#import <CoreData/CoreData.h>

@interface DataViewController ()

@end

@implementation DataViewController

@synthesize app;

-(NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication]delegate];
    if([delegate respondsToSelector:@selector(managedObjectContext)]){
        context = [delegate managedObjectContext];
        
    }
    return context;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)SaveButton:(id)sender {
    
    NSManagedObjectContext *context = [self managedObjectContext];
    
    NSManagedObject *newApp = [NSEntityDescription insertNewObjectForEntityForName:@"Entity" inManagedObjectContext:context];
    
    [newApp setValue:self.Country.text forKey:@"entry1"];
    [newApp setValue:self.Location.text forKey:@"entry2"];
    [newApp setValue:self.PlaceToSee.text forKey:@"entry3"];
    
    NSError * error = nil;
    
    if(![context save:&error]){
        NSLog(@"%@ %@", error, [error localizedDescription]);
    }
    
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
