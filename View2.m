//
//  View2.m
//  Appli
//
//  Created by Johan Cornelissen on 2014-03-28.
//  Copyright (c) 2014 Johan Cornelissen. All rights reserved.
//

#import "View2.h"

@interface View2 ()

@end

@implementation View2


-(IBAction)Button:(id)sender{
    
    HelloWorldLabel.text=[NSString stringWithFormat:@"Hello World"];
    
}




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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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
