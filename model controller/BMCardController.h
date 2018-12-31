//
//  BMCardController.h
//  DeckOfCardsObjC23
//
//  Created by Karissa McDaris on 12/31/18.
//  Copyright © 2018 Karissa McDaris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BMCard.h"

NS_ASSUME_NONNULL_BEGIN

@interface BMCardController : NSObject

+(instancetype)sharedController;

-(void)drawNewCard:(NSInteger)numberOfCards completion:(void(^) (NSArray<BMCard *> *cards, NSError *error))completion;
-(void)fetchCardImage:(BMCard *)card completion:(void(^) (UIImage *image, NSError *error))completion;

@end

NS_ASSUME_NONNULL_END
