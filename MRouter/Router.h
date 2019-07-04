//
//  Router.h
//  MRouter
//
//  Created by Javad Mammadbayli on 7/4/19.
//  Copyright © 2019 mammadbayli. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface Router : NSObject
-(void)registerVC:(Class)vc forKey:(NSString *)key;
-(void)navigateTo: (NSString*) key;
+(id) instance;
@end

NS_ASSUME_NONNULL_END
