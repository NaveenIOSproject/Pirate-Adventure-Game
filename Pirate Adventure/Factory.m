//
//  Factory.m
//  Pirate Adventure
//
//  Created by Naveen Dangeti on 19/03/1938 Saka.
//  Copyright © 1938 Saka Naveen Dangeti. All rights reserved.
//

#import "Factory.h"
#import "Tile.h"

@implementation Factory

-(NSArray *)tiles{
    
    Tile *tile1 =[[Tile alloc]init];
    tile1.story = @"Captain, We need a fearless leader such as yourself to undertake a voyage. You just stop the evil pirate boss. would you like a blunted sword to get started?";
    tile1.backgroundImage =[UIImage imageNamed:@"Sword.jpg"];
    Weapon *bluntedSword = [[Weapon alloc]init];
    bluntedSword.weaponName = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take the sword";
    
    
    Tile *tile2 =[[Tile alloc]init];
    tile2.story = @"You have come across an a armory. Would you like to upgrade your armory to steel armory?";
    tile2.backgroundImage = [UIImage imageNamed:@"Armor.jpg"];
    Armor *steelArmor = [[Armor alloc]init];
    steelArmor.armorName = @"Steel Armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take armor";
    
    
    Tile *tile3 =[[Tile alloc]init];
    tile3.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"dock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the dock";
    
    NSMutableArray *firstColumn =[[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    Tile *tile4 =[[Tile alloc]init];
    tile4.story = @"You have found a parrot. This can be used in your armor slot. Parrots are great defender and fiercly loyal to their captian!";
    tile4.backgroundImage = [UIImage imageNamed:@"Parrot.jpeg"];
    Armor *parrotArmor = [[Armor alloc]init];
    parrotArmor.health = 20;
    parrotArmor.armorName = @"Parrot";
    tile4.actionButtonName = @"Adopt parrot";
    tile4.armor = parrotArmor;
    
    Tile *tile5 =[[Tile alloc]init];
    tile5.story = @"You have stumbbled upon a cache of pirate weapons. Would you like upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"Pistol.jpg"];
    Weapon *pistolWeapon = [[Weapon alloc]init];
    pistolWeapon.damage = 17;
    pistolWeapon.weaponName = @"Pistol";
    tile5.actionButtonName = @"Use pistol";
    tile5.weapon = pistolWeapon;

    
    Tile *tile6 =[[Tile alloc]init];
    tile6.story = @"You have captured by pirates and ordered to walk the plank";
    tile6.backgroundImage = [UIImage imageNamed:@"RumoredPirates.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show no fear";
    
    NSMutableArray *secondColumn =[[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    Tile *tile7 =[[Tile alloc]init];
    tile7.story = @"You have sighted a pirate battle off the coast. Should we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"Ships.jpg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Fight those scum";
    
    Tile *tile8 =[[Tile alloc]init];
    tile8.story = @"The legend of the deep. The mighty kraken appears";
    tile8.backgroundImage = [UIImage imageNamed:@"Ship.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abandon ship";
    
    Tile *tile9 =[[Tile alloc]init];
    tile9.story = @"You have stumbbled upon a hidden cave of a pirate treasurer";
    tile9.backgroundImage = [UIImage imageNamed:@"gold.jpg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take treasure";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    Tile *tile10 =[[Tile alloc]init];
    tile10.story = @"A group of pirates attempts to board your ship.";
    tile10.backgroundImage = [UIImage imageNamed:@"Invaders.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the invaders";
    
    Tile *tile11 =[[Tile alloc]init];
    tile11.story = @"In the deep of see many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"Water.jpg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim deeper";
    
    Tile *tile12 =[[Tile alloc]init];
    tile12.story = @"Your final face off with the fearsome pirate boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"Boss.jpg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];

    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn,secondColumn,thirdColumn,
                      fourthColumn, nil];
    
    return tiles;
    
}

-(Character *)character{
    
    
    Character *character = [[Character alloc]init];
    character.health = 100;
    Armor *armor = [[Armor alloc]init];
    armor.armorName = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    Weapon *weapon = [[Weapon alloc]init];
    weapon.weaponName = @"Fists";
    weapon.damage = 5;
    character.weapon = weapon;
    
    return character;
}


-(Boss *)boss{
    
    Boss *boss =[[Boss alloc]init];
    boss.health = 65;
    return boss;
}


@end
