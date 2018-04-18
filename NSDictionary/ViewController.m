//
//  ViewController.m
//  NSDictionary
//
//  Created by lizaveta shulskaya on 18.04.2018.
//  Copyright © 2018 lizaveta shulskaya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Create NSDictionary using literal declaration
    NSAutoreleasePool *myPool = [[NSAutoreleasePool alloc] init];
    NSDictionary *myDictionary = @{@"BY": @"Belarus", @"RU": @"Russia"};
    
    // Make it mutable and add several new entries
    NSMutableDictionary *myMutableDictionary =  [myDictionary mutableCopy];
    myMutableDictionary[@"PL"] = @"Poland";
    myMutableDictionary[@"F"] = @"France";
    myMutableDictionary[@"D"] = @"Germany";
    
    // Sort it in an ascending and descending order
    NSArray *sortedArrayInAscending = [myMutableDictionary keysSortedByValueUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 compare:obj2];}];
    
    NSArray *sortedArrayKeysInDescending = [myMutableDictionary keysSortedByValueUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj2 compare:obj1];}];
        
    // Check whether required value is contained in the dictionary
    NSLog(@"%@", [myMutableDictionary objectForKey:@"BY"]);
    
    [myPool release];
    [myMutableDictionary release];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
