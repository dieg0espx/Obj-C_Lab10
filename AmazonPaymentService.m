//
//  AmazonPaymentService.m
//  Lab10
//
//  Created by Diego Espinosa on 2020-04-08.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void) processPaymentAmount:(NSInteger) total {
NSLog(@"\nProcessing Amazon total of:$"@"%ld",(long)total);
}

- (BOOL)canProcessPayment {
    int a = arc4random_uniform(2);
    if(a ==1){ return true;}
    return false;
}

@end
