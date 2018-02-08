//
//  CRGoodsDetailServiceProtocol.h
//  CRGoodsDetailServiceProtocol
//
//  Created by 许磊 on 2018/2/8.
//  Copyright © 2018年 Jinhetech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol CRGoodsDetailServiceProtocol <NSObject>

@required;

- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString*)goodsId goodsName:(NSString *)goodsName;

@end
