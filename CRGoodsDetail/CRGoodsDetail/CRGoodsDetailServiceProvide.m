//
//  CRGoodsDetailServiceProvide.m
//  CRGoodsDetail
//
//  Created by 许磊 on 2018/2/8.
//  Copyright © 2018年 Jinhetech. All rights reserved.
//

#import "CRGoodsDetailServiceProvide.h"
#import <CRGoodsDetailServiceProtocol/CRGoodsDetailServiceProtocol.h>
#import <CRProtocolManager/CRProtocolManager.h>

#import "CRGoodsDetailViewController.h"

@interface CRGoodsDetailServiceProvide () <CRGoodsDetailServiceProtocol>

@end

@implementation CRGoodsDetailServiceProvide

+ (void)load
{
    [CRProtocolManager registServiceProvide:[[self alloc] init] forProtocol:@protocol(CRGoodsDetailServiceProtocol)];
}


- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString *)goodsId goodsName:(NSString *)goodsName
{
    CRGoodsDetailViewController *goodsDetailVC = [[CRGoodsDetailViewController alloc] initWithGoodsId:goodsId goodsName:goodsName];
    return goodsDetailVC;
}

@end
