//
//  BMCard.m
//  DeckOfCardsObjC23
//
//  Created by Karissa McDaris on 12/31/18.
//  Copyright © 2018 Karissa McDaris. All rights reserved.
//

#import "BMCard.h"

@implementation BMCard

- (instancetype)initWithSuit:(NSString *)suit image:(NSString *)image
{
    if(self = [super init]){
        _suit = [suit copy];
        _image = [image copy];
    }
    return self;
}

- (instancetype)initwithDictionary:(NSDictionary *)dictionary
{
    NSString *suit = dictionary[[BMCard suitKey]];
    NSString *image = dictionary[[BMCard imageKey]];
    
    return [self initWithSuit: suit image: image];
}

+ (NSString *)suitKey
{
    return @"suit";
}

+ (NSString *) imageKey
{
    return @"image";
}


@end
