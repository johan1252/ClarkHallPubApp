//
//  Accountview.m
//  Appli
//
//  Created by Johan Cornelissen on 2014-03-28.
//  Copyright (c) 2014 Johan Cornelissen. All rights reserved.
//

#import "Accountview.h"

@interface Accountview ()

@end

@implementation Accountview

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring1 = [defaults1 objectForKey:@"savedstring1"];
    [label1 setText:loadstring1];
    
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring2 = [defaults2 objectForKey:@"savedstring2"];
    [label2 setText:loadstring2];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*-(IBAction)load {
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring1 = [defaults1 objectForKey:@"savedstring1"];
    [label1 setText:loadstring1];
    
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring2 = [defaults2 objectForKey:@"savedstring2"];
    [label2 setText:loadstring2];
}*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
