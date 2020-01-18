//
//  CountriesViewControllViewController.h
//  MyApp
//
//  Created by ITHS on 2020-01-16.
//  Copyright © 2020 ITHS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CountriesViewControllViewController : UIViewController{

 
}

@property (strong, nonatomic) NSArray *ContInfo;

@property (weak, nonatomic) IBOutlet UIImageView *DetailedImageView;
@property (weak, nonatomic) IBOutlet UILabel *ContLabel;
@property (weak, nonatomic) IBOutlet UIButton *Button;


@end

NS_ASSUME_NONNULL_END
