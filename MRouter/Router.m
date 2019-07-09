//
//  Router.m
//  MRouter
//
//  Created by Javad Mammadbayli on 7/4/19.
//  Copyright © 2019 mammadbayli. All rights reserved.
//

#import "Router.h"

@implementation Router {
   
}
 NSMutableDictionary *registrations;

+ (id)instance {
    static Router *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (void)registerVC:(Class)vc forKey:(NSString *)key {
    [registrations setObject:vc forKey:key];
}

- (void)navigateTo:(NSString *)key {
    Class vc = [registrations objectForKey:key];
    
    if (vc) {
        
        dispatch_queue_t queue = dispatch_get_main_queue();
        dispatch_async(queue, ^ {
            UINavigationController * _Nullable nav  = [[[UIApplication sharedApplication] keyWindow] rootViewController];
            
            if (nav) {
                [nav pushViewController:[[vc alloc] init] animated:YES];
            }
        });
       
    }
}

- (void)setRootTo:(NSString *)key {
    Class vc = [registrations objectForKey:key];
    
    if (vc) {
        
        dispatch_queue_t queue = dispatch_get_main_queue();
        dispatch_async(queue, ^ {
            UINavigationController * _Nullable nav  = [[[UIApplication sharedApplication] keyWindow] rootViewController];
            
            if (nav) {
                [nav setViewControllers:@[[[vc alloc] init]] animated:YES];
            }
        });
        
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        registrations = [[NSMutableDictionary alloc] init];
    }
    return self;
}

@end
