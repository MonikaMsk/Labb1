//
//  TableViewCell.h
//  MyApp
//
//  Created by ITHS on 2020-01-16.
//  Copyright © 2020 ITHS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *ImageView;

@property (weak, nonatomic) IBOutlet UILabel *ContLabel;

@end

NS_ASSUME_NONNULL_END
