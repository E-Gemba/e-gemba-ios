//
//  EGBNetworking.h
//  EGemba
//
//  Created by edi s on 06/07/18.
//  Copyright © 2018 egemba. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EGBNetworking : NSObject

- (void)post:(NSString *)url parameters:(NSDictionary *)parameters completion:(void (^)(id responseObject, NSError *error))completionHandler;
- (void)get:(NSString *)url parameters:(NSDictionary *)parameters completion:(void (^)(id responseObject, NSError *error))completionHandler;
- (void)put:(NSString *)url parameters:(NSDictionary *)parameters completion:(void (^)(id responseObject, NSError *error))completionHandler;
- (void)delete:(NSString *)url parameters:(NSDictionary *)parameters completion:(void (^)(id responseObject, NSError *error))completionHandler;

@end
