//
//  EGBNetworking.m
//  EGemba
//
//  Created by edi s on 06/07/18.
//  Copyright © 2018 egemba. All rights reserved.
//

#import "EGBNetworking.h"
#import <AFNetworking/AFNetworking.h>

@interface EGBNetworking ()

@property (strong, nonatomic) AFHTTPSessionManager *manager;

@end

@implementation EGBNetworking

- (instancetype)init
{
    self = [super init];
    if (self) {
        /*
         *  Setup Network Manager
         */
        self.manager = [AFHTTPSessionManager manager];
        self.manager.requestSerializer = [AFJSONRequestSerializer serializer];
        self.manager.responseSerializer = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingAllowFragments];
        self.manager.responseSerializer.acceptableContentTypes = [NSSet setWithArray:@[@"text/plain", @"application/json"]];
    }
    return self;
}

- (void)post:(NSString *)url parameters:(NSDictionary *)parameters completion:(void (^)(id responseObject, NSError *error))completionHandler
{
    [self.manager POST:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (completionHandler) {
            completionHandler(responseObject, nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (completionHandler) {
            completionHandler(nil, error);
        }
    }];
}

- (void)get:(NSString *)url parameters:(NSDictionary *)parameters completion:(void (^)(id responseObject, NSError *error))completionHandler
{
    [self.manager GET:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (completionHandler) {
            completionHandler(responseObject, nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (completionHandler) {
            completionHandler(nil, error);
        }
    }];
}

- (void)put:(NSString *)url parameters:(NSDictionary *)parameters completion:(void (^)(id responseObject, NSError *error))completionHandler
{
    [self.manager PUT:url parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (completionHandler) {
            completionHandler(responseObject, nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (completionHandler) {
            completionHandler(nil, error);
        }
    }];
}

- (void)delete:(NSString *)url parameters:(NSDictionary *)parameters completion:(void (^)(id responseObject, NSError *error))completionHandler
{
    [self.manager DELETE:url parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (completionHandler) {
            completionHandler(responseObject, nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (completionHandler) {
            completionHandler(nil, error);
        }
    }];
}

@end
