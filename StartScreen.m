//
//  StartScreen.m
//  Appli
//
//  Created by Johan Cornelissen on 2014-03-29.
//  Copyright (c) 2014 Johan Cornelissen. All rights reserved.
//

#import "StartScreen.h"

@interface StartScreen ()

@end

@implementation StartScreen

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
    // Do any additional setup after loading the view from its nib.
}


-(IBAction)save {
    label1.text = textfield1.text;
    NSString *savestring1 = label1.text;
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
    [defaults1 setObject:savestring1 forKey:@"savedstring1"];
    [defaults1 synchronize];
    
    label2.text = textfield2.text;
    NSString *savestring2 = label2.text;
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    [defaults2 setObject:savestring2 forKey:@"savedstring2"];
    [defaults2 synchronize];
}

-(IBAction)load {
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring1 = [defaults1 objectForKey:@"savedstring1"];
    [label1 setText:loadstring1];
    
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring2 = [defaults2 objectForKey:@"savedstring2"];
    [label2 setText:loadstring2];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
