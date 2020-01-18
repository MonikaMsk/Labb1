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
@property (weak, nonatomic) IBOutlet UITextField *CountryText;
@property (weak, nonatomic) IBOutlet UITextField *LocationText;
@property (weak, nonatomic) IBOutlet UITextField *PlaceToSeeText;

@property (strong) NSManagedObjectModel *app;


- (IBAction)SaveDataButton:(id)sender;

@end

NS_ASSUME_NONNULL_END
