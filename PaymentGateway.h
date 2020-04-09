//
//  PaymentGateway.h
//  Lab10
//
//  Created by Diego Espinosa on 2020-04-08.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//
#import <Foundation/Foundation.h>
@protocol PaymentDelegate
@required
- (void) processPaymentAmount:(NSInteger) total;
- (BOOL) canProcessPayment;

@optional

@end

@interface PaymentGateway : NSObject

@property (nonatomic, strong) id<PaymentDelegate> paymentDelegate;
- (void) processPaymentAmount:(NSInteger) total;

@end


