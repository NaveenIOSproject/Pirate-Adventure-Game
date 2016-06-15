//
//  Tile.h
//  Pirate Adventure
//
//  Created by Naveen Dangeti on 19/03/1938 Saka.
//  Copyright © 1938 Saka Naveen Dangeti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Armor.h"
#import "Weapon.h"


@interface Tile : NSObject

@property (strong,nonatomic) NSString *story;
@property (strong,nonatomic) UIImage *backgroundImage;
@property (strong,nonatomic) NSString *actionButtonName;
@property (strong,nonatomic) Armor *armor;
@property (strong,nonatomic) Weapon *weapon;
@property (nonatomic) int healthEffect;

@end
