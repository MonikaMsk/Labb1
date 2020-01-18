//
//  AppDelegate.h
//  MyApp
//
//  Created by ITHS on 2020-01-16.
//  Copyright © 2020 ITHS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

