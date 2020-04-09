//
//  AmazonPaymentService.h
//  Lab10
//
//  Created by Diego Espinosa on 2020-04-08.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface AmazonPaymentService : NSObject <PaymentDelegate>

- (void) processPaymentAmount:(NSInteger) total;

@end
