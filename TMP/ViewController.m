//
//  ViewController.m
//  TMP
//
//  Created by Mykola Salo on 8/19/14.
//  Copyright (c) 2014 Mykola Salo. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
   
    
/*    CKRecordID *mainRecordID = [[CKRecordID alloc] initWithRecordName: @"Main"];
    
    CKRecord *mainRecord = [[CKRecord alloc] initWithRecordType: @"SomeRecord" recordID: mainRecordID];
    
    mainRecord [@"qwerty"] = @"1";
    mainRecord [@"qwerty2"] = @"2";
    mainRecord [@"qwerty3"] = @"3";
    
    NSLog(@"%@",mainRecord);
    //[mainRecord setObject: @"qwerty" forKey: @"1"];
    
    CKDatabase *publicDB = [[CKContainer defaultContainer] publicCloudDatabase];
    
    [publicDB saveRecord:mainRecord completionHandler:^(CKRecord *savedRec, NSError *error){
        NSLog(@"%@",savedRec);
    }];
    
    [publicDB fetchRecordWithID:mainRecordID completionHandler:^(CKRecord *record, NSError *error) {
        NSLog(@"%@",record);
    }];*/
    
    UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeBadge categories:nil];
    [[UIApplication sharedApplication] registerUserNotificationSettings:settings];
    
 
    CKContainer *my = [CKContainer defaultContainer];
    [my requestApplicationPermission:CKApplicationPermissionUserDiscoverability
     
                                               completionHandler:^(CKApplicationPermissionStatus status, NSError* error)
     {
         
         
         NSLog(@"Ask for Permission");
         
         NSLog(@"Error:%@",error);
         
         NSLog(@"Permission Status:%li",status);
         
     }];
    
    //CKDatabase *pubDB = [me publicCloudDatabase];
    [my fetchUserRecordIDWithCompletionHandler:^(CKRecordID *recordID, NSError *error) {
         NSLog(@"%@",recordID);
    }];
    /*[[CKContainer defaultContainer] fetchUserRecordIDWithCompletionHandler:^(CKRecordID *recordID, NSError *error) {
        NSLog(@"%@",recordID);
    }];*/
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
