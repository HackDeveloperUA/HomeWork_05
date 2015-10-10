//
//  AppDelegate.m
//  HomeWork_05
//
//  Created by MD on 19.01.15.
//  Copyright (c) 2015 hh. All rights reserved.
//

#import "AppDelegate.h"
#import "ASMan.h"
#import "ASCyclist.h"
#import "ASRuner.h"
#import "ASSwiner.h"

#import "Child.h"
#include "Animal.h"
#include "Dog.h"
#include "Cat.h"



@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    
  /*  NSArray* array = [[NSArray alloc] initWithObjects:@"String 1", @"String 2", @"String 2", nil];
    
    
    for (NSString* string in array) {
        NSLog(@" %@", string);
        
        NSLog(@" index = %d ", [array indexOfObject:string]);
        NSLog(@" \n\n");
    }*/
    
    ASMan*         man = [ASMan new];
    ASCyclist* cyclist = [ASCyclist new];
    ASRuner*   runner  = [ASRuner new];
    ASSwiner*  swimer  = [ASSwiner new];
    Child*     child   = [Child new];
    
    Animal*    animal  = [Animal new];
    Dog*       dog     = [Dog new];
    Cat*       cat     = [Cat new];
    

    man.line   = @"Man";
    man.name   = @"Jhon";
    man.height = 1.8f;
    man.weight = 80.f;
    man.gender = @"man";
    
    cyclist.line   = @"Cyclist";
    cyclist.name   = @"Bob";
    cyclist.height = 1.7f;
    cyclist.weight = 79.f;
    cyclist.gender = @"man";
    
    runner.line    = @"Runner";
    runner.name    = @"Abdul";
    runner.height  = 1.6f;
    runner.weight  = 75.f;
    runner.gender  = @"man";
    
    swimer.line    = @"Swimer";
    swimer.name    = @"Ace";
    swimer.height  = 1.4;
    swimer.weight  = 65.f;
    swimer.gender  = @"female";
    
    child.line     = @"learn";
    child.name     = @"Muhamad";
    child.height   = 1.3f;
    child.weight   = 40.f;
    child.gender   = @"man";
    
    child.religion = @"Православный";
    child.age      = 9.f;
    
    animal.nickname  = @"justAnimal";
    animal.age       = 0.f;
    animal.weight    = 0.f;
    
    dog.nickname    = @"Rex";
    dog.age         = 5;
    dog.weight      = 30.f;
    
    cat.nickname    = @"Tomas";
    cat.age         = 4;
    cat.weight      = 5;
    
    
    
    
    
   // NSArray* array = [[NSArray alloc] initWithObjects: man, dog, cyclist, runner, animal, swimer, child, cat, nil];
    
    /*
    for (ASMan* obj in array) {
        
        NSLog(@" %@ ", obj.line);
        NSLog(@" Name   : %@ ", obj.name);
        NSLog(@" Height : %f ", obj.height);
        NSLog(@" Weight : %f ", obj.weight);
        NSLog(@" Gender : %@ ", obj.gender);
        NSLog(@" \n");
        [obj move];
        
        if ([obj isKindOfClass:[Child class]]) {
            
            Child* child = (Child*) obj;
            
            NSLog(@" \n relegion %@ ", child.religion);
            NSLog(@"  age %f",child.age);
        }
        
        NSLog(@"\n\n\n");
     } */
    
    
    /*
    for (int countNumber = [array count] - 1; countNumber >= 0; countNumber--) {
        
        ASMan* obj = [array objectAtIndex:countNumber];
        
        NSLog(@" %@ ", obj.line);
        NSLog(@" Name   : %@ ", obj.name);
        NSLog(@" Height : %f ", obj.height);
        NSLog(@" Weight : %f ", obj.weight);
        NSLog(@" Gender : %@ ", obj.gender);
        NSLog(@" \n");
        [obj move];
        
        if ([obj isKindOfClass:[Child class]]) {
            
            Child* child = (Child*) obj;
            
            NSLog(@"  relegion %@ ", child.religion);
            NSLog(@"  age %f",child.age);
        }
        
        NSLog(@"\n\n\n");
    } */
    
    /*
    // мастер
    for (int countNumber = 0; [array count] > countNumber; countNumber++) {
        
        
        NSObject* anyObject = [array objectAtIndex:countNumber];
        
        
        if ([anyObject isKindOfClass:[ASMan class]])
        {
           NSLog(@" This is man ");
            
           
            if ([anyObject isKindOfClass:[Child class]]) {
                
                Child* anyChild = (Child*) anyObject;
                
                NSLog(@" %@ ", anyChild.line);
                NSLog(@" Name   : %@ ", anyChild.name);
                NSLog(@" Height : %f ", anyChild.height);
                NSLog(@" Weight : %f ", anyChild.weight);
                NSLog(@" Gender : %@ ", anyChild.gender);
                [anyChild move];

                NSLog(@"  relegion %@ ", anyChild.religion);
                NSLog(@"  age %f", anyChild.age);
                NSLog(@" \n");

            } else {
                
                ASMan* man = (ASMan*) anyObject;
                
                NSLog(@" %@ ", man.line);
                NSLog(@" Name   : %@ ", man.name);
                NSLog(@" Height : %f ", man.height);
                NSLog(@" Weight : %f ", man.weight);
                NSLog(@" Gender : %@ ", man.gender);
                [man move];
                NSLog(@" \n");
            }
        } else {
            
            NSLog(@" This is Animal ");
            
            //Dog* anyDog = (Dog*) anyObject;
            //ASMan* man = (ASMan*) anyObject;
            Animal* anyAnimal = (Animal*) anyObject;
            
            
            NSLog(@" nickName : %@", anyAnimal.nickname);
            NSLog(@" age      : %f", anyAnimal.age);
            NSLog(@" weight   : %f", anyAnimal.weight);
           [anyAnimal move];
        }
    }*/
    
    
    
    // Звезда
    
    
   // NSArray *manArray    = [NSArray arrayWithObjects:man, cyclist, runner, swimer ,child, nil];
   // NSArray *animalArray = [NSArray arrayWithObjects:dog, animal, cat, nil];
   NSArray* array = [[NSArray alloc] initWithObjects: man, dog, cyclist, runner, animal, swimer, child, cat, nil];
    
    
    NSMutableArray *humans=[NSMutableArray array];
    NSMutableArray *animals=[NSMutableArray array];
    
    NSMutableArray  *sorted = [[NSMutableArray alloc]init];
    
    for (NSObject*tmp in array){
        
        if ([tmp isKindOfClass:[ASMan class]]) {
            
            [humans addObject:tmp];}
        else {
            [animals addObject:tmp];
        }
    }
    
    [humans sortUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES]]];
    
    [sorted addObjectsFromArray:humans];
    
    [animals sortUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"nickname" ascending:YES]]];
    
    [sorted addObjectsFromArray:animals];
    
    NSLog(@"%@", sorted);

   
 /*
    for (int count = 0;  [manArray count]+[animalArray count] >= count ; count++) {
        
        NSObject* anyObj1;
        NSObject* anyObj2;
        
        if ([manArray count] > count) {
           anyObj1 = [manArray    objectAtIndex:count];
        }
        
        if ([animalArray count] > count) {
            anyObj2 = [animalArray objectAtIndex:count];
        }
        
        // NSObject* anyObj1 = [manArray    objectAtIndex:count];
        // NSObject* anyObj2 = [animalArray objectAtIndex:count];
        
        
        if ([anyObj1 isKindOfClass:[ASMan class]])
        {
            
            NSLog(@" This is Human");
            
            if ([anyObj1 isKindOfClass:[Child class]])
            {
                
                NSLog(@" This is Child ");
                
                Child* anyChild = (Child*) anyObj1;
                
                NSLog(@" %@ ", anyChild.line);
                NSLog(@" Name   : %@ ", anyChild.name);
                NSLog(@" Height : %f ", anyChild.height);
                NSLog(@" Weight : %f ", anyChild.weight);
                NSLog(@" Gender : %@ ", anyChild.gender);
                [anyChild move];
                
                NSLog(@"  relegion %@ ", anyChild.religion);
                NSLog(@"  age %f", anyChild.age);
                NSLog(@" \n");
            }
            
            else {
                
                ASMan* man = (ASMan*) anyObj1;
                
                NSLog(@" %@ ", man.line);
                NSLog(@" Name   : %@ ", man.name);
                NSLog(@" Height : %f ", man.height);
                NSLog(@" Weight : %f ", man.weight);
                NSLog(@" Gender : %@ ", man.gender);
                [man move];
                NSLog(@" \n");
                }
        }
        
         if ([anyObj2 isKindOfClass:[Animal class]])
        {
            
            Animal* anyAnimal = (Animal*) anyObj2;
            
            NSLog(@" nickName : %@", anyAnimal.nickname);
            NSLog(@" age      : %f", anyAnimal.age);
            NSLog(@" weight   : %f", anyAnimal.weight);
            [anyAnimal move];
        }
            
    }
     */

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
