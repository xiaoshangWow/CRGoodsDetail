//
//  CRProtocolManager.m
//  CRProtocolManager
//
//  Created by 许磊 on 2018/2/7.
//  Copyright © 2018年 Jinhetech. All rights reserved.
//

#import "CRProtocolManager.h"

@interface CRProtocolManager ()

@property (nonatomic, strong) NSMutableDictionary  *serviceProvideSource;

@end

@implementation CRProtocolManager

+ (CRProtocolManager *)sharedInstance
{
    static CRProtocolManager *instance;
    static dispatch_once_t oneToken;
    dispatch_once(&oneToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol
{
    if (provide == nil || protocol == nil)
        return;
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}

+ (id)serviceProvideForProtocol:(Protocol *)protocol
{
    return [[self sharedInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}

@end
