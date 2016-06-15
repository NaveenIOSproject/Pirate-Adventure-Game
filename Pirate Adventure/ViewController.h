//
//  ViewController.h
//  Pirate Adventure
//
//  Created by Naveen Dangeti on 19/03/1938 Saka.
//  Copyright © 1938 Saka Naveen Dangeti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Character.h"
#import "Boss.h"

@interface ViewController : UIViewController

//iVars

@property (nonatomic) CGPoint currentPoint;
@property (strong,nonatomic) NSArray *tiles;
@property (strong,nonatomic) Character *character;
@property (strong,nonatomic) Boss *boss; 

//IBoutlets

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;

@property (strong, nonatomic) IBOutlet UILabel *healthLabel;

@property (strong, nonatomic) IBOutlet UILabel *damageLabel;

@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;

@property (strong, nonatomic) IBOutlet UILabel *armorLabel;

@property (strong, nonatomic) IBOutlet UIButton *actionButton;

@property (strong, nonatomic) IBOutlet UILabel *storyLabel;

@property (strong, nonatomic) IBOutlet UIButton *northLabel;

@property (strong, nonatomic) IBOutlet UIButton *westLabel;

@property (strong, nonatomic) IBOutlet UIButton *southLabel;

@property (strong, nonatomic) IBOutlet UIButton *eastLabel;

//IBactions

- (IBAction)actionButtonPressed:(UIButton *)sender;

- (IBAction)northButtonPressed:(UIButton *)sender;

- (IBAction)westButtonPressed:(UIButton *)sender;

- (IBAction)southButtonPressed:(UIButton *)sender;

- (IBAction)eastButtonPressed:(UIButton *)sender;

- (IBAction)resetButtonPressed:(UIButton *)sender;


@end

