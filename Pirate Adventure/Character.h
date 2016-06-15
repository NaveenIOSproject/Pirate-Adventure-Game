//
//  Character.h
//  Pirate Adventure
//
//  Created by Naveen Dangeti on 21/03/1938 Saka.
//  Copyright © 1938 Saka Naveen Dangeti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Armor.h"
#import "Weapon.h"

@interface Character : NSObject

@property (strong,nonatomic) Armor *armor;
@property (strong,nonatomic) Weapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
