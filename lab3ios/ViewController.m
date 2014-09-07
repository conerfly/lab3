//
//  ViewController.m
//  lab3ios
//
//  Created by YuanZhengyu on 6/09/2014.
//  Copyright (c) 2014 UOW. All rights reserved.
//

#import "ViewController.h"
#import "randomcolor.h"
@interface ViewController ()
@property (retain, nonatomic) IBOutlet UILabel *myLabel;
@property (retain, nonatomic) UITextField *yoTextField;
@property (retain, nonatomic) UITextField *naTextField;
@end

@implementation ViewController

- (IBAction)touchButton:(UIButton *)sender {
    _myLabel.text = [NSString stringWithFormat:@"%@\n%@",_yoTextField.text,_naTextField.text];
    [UIView animateWithDuration:1.0 animations:^(void) {
        self.view.backgroundColor = [UIColor randomColor];
    }];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Create Label
    _myLabel = [[UILabel alloc]initWithFrame:CGRectMake(69, 204, 182, 156)];
    [_myLabel setBackgroundColor:[UIColor clearColor]];
    //[_myLabel setTextAlignment:UITextAlignmentCenter];
    _myLabel.textAlignment=UITextAlignmentCenter;
    [_myLabel setText:@""];
    _myLabel.numberOfLines = 2;
    [self.view addSubview:_myLabel];
    //create button;
    UIButton* button=[UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"show message" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(touchButton:) forControlEvents:UIControlEventTouchUpInside];
    [button setFrame:CGRectMake(104, 470, 112, 30)];
    [self.view addSubview:button];
    //create text1;
    _yoTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 29, 262, 30)];
    [_yoTextField setPlaceholder:@"yo"];
    [_yoTextField setBackgroundColor:[UIColor whiteColor]];
    [_yoTextField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:_yoTextField];
    //create text2
    _naTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 79, 262, 30)];
    [_naTextField setPlaceholder:@"yo name"];
    [_naTextField setBackgroundColor:[UIColor whiteColor]];
    [_naTextField setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:_naTextField];
	// Do any additional setup after loading the view, typically from a nib.
    self.naTextField.delegate = self;
    self.yoTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateView:(id)sender
{
    
    if(sender == _naTextField) {
        
        _myLabel.text = _naTextField.text;
        [UIView animateWithDuration:1.0 animations:^(void) {
            self.view.backgroundColor = [UIColor randomColor];
        }];
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    [self updateView:textField];
    return YES;
}

@end
