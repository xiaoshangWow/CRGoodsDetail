//
//  CRConfirmOrderServiceProtocol.h
//  CRConfirmOrderServiceProtocol
//
//  Created by 许磊 on 2018/2/8.
//  Copyright © 2018年 Jinhetech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol CRConfirmOrderServiceProtocol  <NSObject>

- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete;



@end



