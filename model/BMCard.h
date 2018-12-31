//
//  BMCard.h
//  DeckOfCardsObjC23
//
//  Created by Karissa McDaris on 12/31/18.
//  Copyright © 2018 Karissa McDaris. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BMCard : NSObject

@property (nonatomic, copy, readonly) NSString *suit;
@property (nonatomic, copy, readonly) NSString *image;

-(instancetype) initWithSuit:(NSString *)suit image:(NSString *)image;
-(instancetype) initwithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
