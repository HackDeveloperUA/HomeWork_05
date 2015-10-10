//
//  Animal.h
//  HomeWork_05
//
//  Created by MD on 19.01.15.
//  Copyright (c) 2015 hh. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <UIKit/UIKit.h>
@interface Animal : NSObject

@property (strong , nonatomic) NSString* nickname;
@property (assign , nonatomic) CGFloat   age;
@property (assign , nonatomic) CGFloat   weight;

-(void) move;

@end
