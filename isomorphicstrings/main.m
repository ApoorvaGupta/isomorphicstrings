//
//  main.m
//  isomorphicstrings
//
//  Created by Apoorva Gupta on 3/18/16.
//  Copyright © 2016 Apoorva Gupta. All rights reserved.
//

#import <Foundation/Foundation.h>




BOOL isIsomorphic (NSMutableString* str1, NSMutableString *str2)
{
    if(str1.length != str2.length)
        return NO;
    else if (str1.length == 0 && str2.length == 0)
        return YES;
    else {
        NSMutableDictionary *isomorphicDictionary = [[NSMutableDictionary alloc]init];
        for(int i =0; i< str1.length; i++)
        {
            NSString *charone = [NSString stringWithFormat:@"%c",[str1 characterAtIndex:i]];
            NSString *charTwo = [NSString stringWithFormat:@"%c",[str2 characterAtIndex:i]];
            if([[isomorphicDictionary allKeys] containsObject:charone] && [isomorphicDictionary valueForKey:charone] != charTwo)
                return NO;
            else if (![[isomorphicDictionary allKeys] containsObject:charone])
            {
                [isomorphicDictionary setObject:charTwo forKey:charone];
            }
            
                
        }
       
    }
    
    return YES;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, Isomorphic Strings!");
        NSMutableString *stringOne = [[NSMutableString alloc]initWithString:@"turtle"];
        NSMutableString *stringTwo = [[NSMutableString alloc]initWithString:@"tletur"];
        
      BOOL result =  isIsomorphic(stringOne,stringTwo);
        NSLog(@"%hhd",result);
        
        
        
        
        
    }
    return 0;
}
