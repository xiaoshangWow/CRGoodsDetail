//
//  CRProtocolManager.h
//  CRProtocolManager
//
//  Created by 许磊 on 2018/2/7.
//  Copyright © 2018年 Jinhetech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CRProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;


@end
