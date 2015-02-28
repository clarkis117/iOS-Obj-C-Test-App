//
//  HelloViewController.m
//  HelloWorld
//
//  Created by JOSHUA RYAN CLARK on 1/13/15.
//  Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//
//The default UI element mode is redraw mean that UI fields will redraw when their attributes change

#import "HelloViewController.h"

@interface HelloViewController ()

@property (weak, nonatomic) IBOutlet UILabel *Hello_App_Label;
@property (weak, nonatomic) IBOutlet UITextField *Text_Field;
@property (weak, nonatomic) IBOutlet UILabel *Simple_Label;

@end

@implementation HelloViewController

//button press
- (IBAction)Press_Me:(id)sender {
    
    //change the Simple Label
    NSString *contents = [[self Text_Field] text];
    
    NSString *message = [NSString stringWithFormat:@"Hello, %@ !", contents];
    
    [self.Simple_Label setText:message];
    
    //Change The top label(Label Hello)
    NSString *Hello_World = @"Hello World!";
    
    [self.Hello_App_Label setText:Hello_World];
    
    //make keyboard go away
    [self.Text_Field resignFirstResponder];
}

//Make keyboard go away on return
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

//Make keyboard go away when the user touches outside of a UI element
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
