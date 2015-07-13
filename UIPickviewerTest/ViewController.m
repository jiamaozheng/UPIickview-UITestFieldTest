//
//  ViewController.m
//  UIPickviewerTest
//
//  Created by Jiamao Zheng on 7/13/15.
//  Copyright (c) 2015 Emerge Media. All rights reserved.
//http://kaflurbaleen.blogspot.com/2014/05/dropdown-menu-like-things-on-ios-made.html

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.icon.text = @"Jiamao";
    
    self.pickViewer.inputView = [self createPicker];
//    self.pickViewer.text = @"MM/DD/YYYY";
    

    // Do any additional setup after loading the view, typically from a nib.
    
    
    //check button
//    [self.checkBtn setTitle:@"\u2610" forState:UIControlStateNormal];    // uncheck the button in normal state
//    [self.checkBtn setTitle:@"\u2611" forState:UIControlStateSelected];
}

- (IBAction)checkButtonTapped:(UIButton *)sender {
    NSLog(@"clicked"); 
    sender.selected = !sender.selected;    // toggle button's selected state
    
    if (sender.state == UIControlStateSelected) {
        [self.checkBtn setTitle:@"\u2611" forState:UIControlStateSelected];
        // do something when button is checked
    } else {
         [self.checkBtn setTitle:@"\u2610" forState:UIControlStateNormal];
        // do something when button is unchecked
    }
}



- (UIView *)createPicker {
    
    UIView *pickerView = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, 216)];
    pickerView.backgroundColor = [UIColor grayColor];
    
    UIPickerView *picker = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 45, 300, 120)];
    picker.delegate = self;
    [pickerView addSubview:picker];
    
    return pickerView;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    [self.pickViewer resignFirstResponder];
    pickerView.hidden = YES; //Show the pickerview again when you neeed it
}

//- (void) pickerView: (UIPickerView*) pickerView
//       didSelectRow: (NSInteger)     row
//        inComponent: (NSInteger)     component
//{
//    [self.pickViewer resignFirstResponder];
//}

//- (BOOL)textFieldShouldReturn:(UITextField *)textField
//{
//    if (textField == self.ageTextField)
//    {
//        [ageTextField resignFirstResponder];
//    }
//    else
//    {
//        [relationshipTextField resignFirstResponder];
//    }
//    [pickerView removeFromSuperview];
//    return YES;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
