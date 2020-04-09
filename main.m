//
//  main.m
//  Lab10
//
//  Created by Diego Espinosa on 2020-04-08.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int getUserInput(){
    int maxLenght = 200;
    char inputChars[maxLenght];
    char *result = fgets(inputChars, maxLenght, stdin);
    if(result != NULL){
        NSString *theString = [[NSString stringWithUTF8String:inputChars]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        return [theString intValue];
    }
    return -1;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int randDollarValue = 100+arc4random()%(1000-100);
        
        NSLog(@"%s %i %s","\nThank you for shopping at @Acme.com\nYour total today is $",randDollarValue, "\nPlease select your payment method:\n 1:PayPal 2:Stripe 3:Amazon 4:Apple \nEnter Payment method:" );
        NSInteger user_input = getUserInput();
        PaymentGateway *pg = [PaymentGateway new];
        
        switch (user_input){
            case 1:
                pg.paymentDelegate = [PaypalPaymentService_ new];
                NSLog(@"\nProcessing PayPal total of:$"@"%d",randDollarValue);
                break;
                
            case 2:
                pg.paymentDelegate = [StripePaymentService_ new];
                NSLog(@"\nProcessing Stripe total of:$"@"%d",randDollarValue);
                break;
                
            case 3:
                pg.paymentDelegate = [AmazonPaymentService new];
                NSLog(@"\nProcessing Amazon total of:$"@"%d",randDollarValue);
                break;
                
            case 4:
                pg.paymentDelegate = [ApplePaymentService new];
                NSLog(@"\nProcessing Apple total of:$"@"%d",randDollarValue);
                break;
        }
    }
    return 0;
}
