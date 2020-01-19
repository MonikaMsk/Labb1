//
//  DataViewController.h
//  MyApp
//
//  Created by ITHS on 2020-01-18.
//  Copyright © 2020 ITHS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DataViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *Country;
@property (weak, nonatomic) IBOutlet UITextField *Location;
@property (weak, nonatomic) IBOutlet UITextField *PlaceToSee;

@property(strong) NSManagedObjectModel *app;

- (IBAction)SaveButton:(id)sender;


@end

NS_ASSUME_NONNULL_END
