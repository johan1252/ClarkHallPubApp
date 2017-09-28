//
//  ViewController.m
//  Appli
//
//  Created by Johan Cornelissen on 2014-03-28.
//  Copyright (c) 2014 Johan Cornelissen. All rights reserved.
//

#import "ViewController.h"
#import <Accounts/Accounts.h>
#import <Social/Social.h>
#import "STTwitter.h"



@interface ViewController () <UITableViewDataSource, UITableViewDelegate>


@property (strong, nonatomic) NSMutableArray *twitterFeed;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
	// Do any additional setup after loading the view, typically from a nib.
    STTwitterAPI *twitter = [STTwitterAPI twitterAPIAppOnlyWithConsumerKey:@"RHQchctVLaUTUmoOJxLSobs6R"
                                                            consumerSecret:@"BZMq85BmHsF4VHuLinRx5NqAjT9n7oV2ZEQFzIyml4aQ63WhSv"];
    
    [twitter verifyCredentialsWithSuccessBlock:^(NSString *bearerToken) {
        
        [twitter getUserTimelineWithScreenName:@"clarkhallpub"
                                  successBlock:^(NSArray *statuses) {
                                      
                                      self.twitterFeed = [NSMutableArray arrayWithArray:statuses];
                                      
                                      [self->tableView reloadData];
                                      
                                  } errorBlock:^(NSError *error) {
                                      
                      
                                    NSLog(@"%@", error.debugDescription);
                                      
                                  }];
        
    } errorBlock:^(NSError *error) {
        
        NSLog(@"%@", error.debugDescription);
        
    }];
   /*
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"FirstLaunch"])
    {}
    else {
        // Place code here
        self.view.backgroundColor = [UIColor redColor];
        StartScreen *SV = [[StartScreen alloc]init];
        [self presentViewController:SV animated:YES completion:nil];
        
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"FirstLaunch"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    */
}






#pragma mark Table View Methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.twitterFeed.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID =  @"CellID" ;
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    NSInteger idx = indexPath.row;
    NSDictionary *t = self.twitterFeed[idx];
    
    cell.textLabel.text = t[@"text"];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
