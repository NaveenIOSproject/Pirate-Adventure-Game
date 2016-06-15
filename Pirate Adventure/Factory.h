//
//  Factory.h
//  Pirate Adventure
//
//  Created by Naveen Dangeti on 19/03/1938 Saka.
//  Copyright © 1938 Saka Naveen Dangeti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "Boss.h"

@interface Factory : NSObject

-(NSArray *)tiles;
-(Character *)character;
-(Boss *)boss;

@end
