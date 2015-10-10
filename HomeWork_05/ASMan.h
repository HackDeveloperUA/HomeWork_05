//
//  ASMan.h
//  HomeWork_05
//
//  Created by MD on 19.01.15.
//  Copyright (c) 2015 hh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h> 


@interface ASMan : NSObject


@property (strong , nonatomic)   NSString* line;
@property (strong , nonatomic)   NSString* name;
@property (assign , nonatomic)   CGFloat   height;
@property (assign , nonatomic)   CGFloat   weight;
@property (strong , nonatomic)   NSString* gender;


-(void) move;

@end
