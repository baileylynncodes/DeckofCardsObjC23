//
//  ViewController.m
//  DeckOfCardsObjC23
//
//  Created by Karissa McDaris on 12/31/18.
//  Copyright © 2018 Karissa McDaris. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UIImageView *cardImageView;
@property (weak, nonatomic) IBOutlet UILabel *suitTextLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)drawCardButtonTapped:(id)sender {
    [self updateViews];
}

-(void)updateViews
{
    [[BMCardController sharedController] drawNewCard:1 completion:^(NSArray<BMCard *> *cards, NSError *error) {
        if (error) {
            NSLog(@"Error getting photo references for %@ on %@:", cards, error);
            return;
        }
        BMCard *card = [cards objectAtIndex:0];
        dispatch_async(dispatch_get_main_queue(), ^ {
            self.suitTextLabel.text = card.suit;
        });
        [[BMCardController sharedController] fetchCardImage:card completion:^(UIImage *image, NSError *error) {
            dispatch_async(dispatch_get_main_queue(), ^{
                self.cardImageView.image = image;
            });
        }];
    }];
}

@end
