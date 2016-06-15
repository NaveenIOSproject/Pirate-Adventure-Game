//
//  ViewController.m
//  Pirate Adventure
//
//  Created by Naveen Dangeti on 19/03/1938 Saka.
//  Copyright © 1938 Saka Naveen Dangeti. All rights reserved.
//

#import "ViewController.h"
#import "Factory.h"
#import "Tile.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Factory *factory = [[Factory alloc]init];
    //NSArray *tiles = [factory tiles];
    self.tiles = [factory tiles];
    self.character = [factory character];
    self.boss = [factory boss];
    //NSLog(@"%@",self.tiles);
    self.currentPoint = CGPointMake(0, 0);
    [self updateCharacterStatsForArmor:nil withWeapon:nil withHealthEffect:0];
    //NSLog(@"%f %f",self.currentPoint.x,self.currentPoint.y);
    [self updateTile];
    [self updateButtons];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - IBAction

- (IBAction)actionButtonPressed:(id)sender {
    
    Tile *tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    if (tile.healthEffect == -15) {
        self.boss.health = self.boss.health - self.character.damage;
    }
    [self updateCharacterStatsForArmor:tile.armor withWeapon:tile.weapon withHealthEffect:tile.healthEffect];
    if (self.character.health <=0) {
        UIAlertController *alertView = [UIAlertController alertControllerWithTitle:@"Death Alert" message:@"You have died please restart the game" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okText = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil];
        [alertView addAction:okText];
        [self presentViewController:alertView animated:YES completion:nil];
    }
    
    else if (self.boss.health<=0){
        UIAlertController *alertView = [UIAlertController alertControllerWithTitle:@"Victory message" message:@"You have defeated the evil pirate Boss!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okText = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil];
        [alertView addAction:okText];
        [self presentViewController:alertView animated:YES completion:nil];
    }
    [self updateTile];
    
}

- (IBAction)northButtonPressed:(UIButton *)sender

{
    
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y+1);
    [self updateButtons];
    [self updateTile];
    
}

- (IBAction)westButtonPressed:(UIButton *)sender

{
    
    self.currentPoint = CGPointMake(self.currentPoint.x-1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
    
}

- (IBAction)southButtonPressed:(UIButton *)sender

{
    
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y-1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)eastButtonPressed:(UIButton *)sender

{
    
    self.currentPoint = CGPointMake(self.currentPoint.x+1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)resetButtonPressed:(UIButton *)sender {
    
    self.character = nil;
    self.boss = nil;
    [self viewDidLoad];
}

#pragma mark - Helper methods

-(void)updateTile{
    
    Tile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tileModel.story;
    self.backgroundImageView.image = tileModel.backgroundImage;
    self.healthLabel.text = [NSString stringWithFormat:@"%i",self.character.health];
    self.damageLabel.text = [NSString stringWithFormat:@"%i",self.character.damage];
    self.armorLabel.text = self.character.armor.armorName;
    self.weaponLabel.text = self.character.weapon.weaponName;
    [self.actionButton setTitle:tileModel.actionButtonName forState:UIControlStateNormal];
}

-(void)updateButtons{
    
    self.westLabel.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x-1, self.currentPoint.y)];
    self.eastLabel.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x+1, self.currentPoint.y)];
    self.northLabel.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y+1)];
    self.southLabel.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y-1)];
}

-(BOOL)tileExistsAtPoint:(CGPoint)point{
    
    if (point.x>=0 && point.y>=0 && point.x<[self.tiles count] && point.y<[[self.tiles objectAtIndex:point.x] count]) {
        return NO;
    }
    else{
        return YES;
    }
}

-(void)updateCharacterStatsForArmor:(Armor *)armor withWeapon:(Weapon *)weapon withHealthEffect:(int)healthEffect{
    
    if (armor != nil) {
        self.character.health = self.character.health - self.character.armor.health + armor.health;
        self.character.armor = armor;
    }
    else if (weapon != nil){
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    }
    else if (healthEffect!=0){
        self.character.health = self.character.health + healthEffect;
    }
    else{
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    }
}




@end
