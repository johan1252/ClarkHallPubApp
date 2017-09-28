//
//  StartView.h
//  Appli
//
//  Created by Johan Cornelissen on 2014-03-29.
//  Copyright (c) 2014 Johan Cornelissen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StartView : UIViewController
{
IBOutlet UITextField *textfield1;
IBOutlet UITextField *textfield2;
IBOutlet UILabel *label1;
IBOutlet UILabel *label2;
}
-(IBAction)save;
-(IBAction)load;
-(IBAction)settext;
@end

