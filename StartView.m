//
//  StartView.m
//  Appli
//
//  Created by Johan Cornelissen on 2014-03-29.
//  Copyright (c) 2014 Johan Cornelissen. All rights reserved.
//

#import "StartView.h"

@interface StartView ()

@end

@implementation StartView

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
