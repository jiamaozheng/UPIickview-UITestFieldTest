//
//  ViewController.m
//  UIPickviewerTest
//
//  Created by Jiamao Zheng on 7/13/15.
//  Copyright (c) 2015 Emerge Media. All rights reserved.
//http://kaflurbaleen.blogspot.com/2014/05/dropdown-menu-like-things-on-ios-made.html
//http://stackoverflow.com/questions/650131/checkbox-in-iphone-application

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIDatePicker *datePicker;
@property (nonatomic, readwrite, assign) UITextField* activeTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//     self.icon.text = @"Jiamao";
//    [self.pickViewer setUserInteractionEnabled:YES];
//    self.pickViewer.inputView = [self createPicker];
////    self.pickViewer.text = @"MM/DD/YYYY";
////    self.pickViewer.inputView =
//    
//    
//    UIDatePicker *picker1   = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 210, 320, 216)];
//    [picker1 setDatePickerMode:UIDatePickerModeDate];
//    picker1.backgroundColor = [UIColor whiteColor];
//    [picker1 addTarget:self action:@selector(startDateSelected:) forControlEvents:UIControlEventValueChanged];
    
    //    [picker1 addSubview:toolBar];
//    self.time.inputView  = picker1;

    // Do any additional setup after loading the view, typically from a nib.
    
    
    //check button
//    [self.checkBtn setTitle:@"\u2611" forState:UIControlStateSelected];
//    [self.checkBtn setTitle:@"\u2610" forState:UIControlStateNormal];    // uncheck the button in normal state
//    [self.checkBtn setTitle:@"\u2611" forState:UIControlStateSelected];  // check the button in selected state
    

    self.datePicker = [[UIDatePicker alloc]init];
    self.datePicker.datePickerMode = UIDatePickerModeDate;
    self.datePicker.timeZone = [NSTimeZone localTimeZone];
    [self.datePicker setDate:[NSDate date]];
    [self.datePicker addTarget:self action:@selector(updateTextField:) forControlEvents:UIControlEventValueChanged];
    [self.time setInputView:self.datePicker];
    


}

-(void)updateTextField:(id)sender
{
    self.datePicker = (UIDatePicker*)self.time.inputView;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MM/dd/yyyy"];
    self.time.text = [dateFormatter stringFromDate:self.datePicker.date];
}


//
//- (void)textFieldDidBeginEditing:(UITextField *)textField
//{
//    NSLog(@"Enter");
//    
//    self.time = textField;
//    
//    // Create a date picker for the date field.
//    UIDatePicker *datePicker = [[UIDatePicker alloc]init];
//    datePicker.datePickerMode = UIDatePickerModeDate;
//    datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:-31536000];
//    [datePicker setDate:[NSDate date]];
//    [datePicker addTarget:self action:@selector(updateDateField:) forControlEvents:UIControlEventValueChanged];
//    
//    // If the date field has focus, display a date picker instead of keyboard.
//    // Set the text to the date currently displayed by the picker.
//    if (textField.tag == 1)
//    {
//        self.time.inputView = datePicker;
//        self.time.text = [self formatDate:datePicker.date];
//    }
//}


// Called when the date picker changes.
//- (void)updateDateField:(id)sender
//{
//    UIDatePicker *picker = (UIDatePicker*)self.time.inputView;
//     [picker setDatePickerMode:UIDatePickerModeDate];
//    
//    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
//    NSString *dateStri=[dateFormat stringFromDate:self.datePicker.date];
//    [self.pickViewer setText:[NSString stringWithFormat:@"%@",dateStri]];
//    
////    self.time.text = [self formatDate:picker.date];
//}


//// Formats the date chosen with the date picker.
//- (NSString *)formatDate:(NSDate *)date
//{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
//    [dateFormatter setDateFormat:@"MM'/'dd'/'yyyy"];
//    NSString *formattedDate = [dateFormatter stringFromDate:date];
//    return formattedDate;
//}
//
////http://stackoverflow.com/questions/21011968/how-to-display-uidatepicker-if-user-hit-the-uitextfield-programatically
////http://stackoverflow.com/questions/11197855/iphone-display-date-picker-on-uitextfield-touch
//
//-(void)startDateSelected:(UIDatePicker *)datePicker
//{
//       NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    self.time.text = [dateFormatter stringFromDate:datePicker.date];
//}
//
//- (IBAction)checkButtonTapped:(UIButton *)sender {
//  
//    sender.selected = !sender.selected;    // toggle button's selected state
//    
//    if (sender.state == UIControlStateSelected) {
//  NSLog(@"checked");
//        // do something when button is checked
//    } else {
//          NSLog(@"not checked");
//        // do something when button is unchecked
//    }
//}

//- (UIView *)createPicker {
////    UIDatePicker *pickerView = [[UIDatePicker alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, 216)];
//    UIView *pickerView = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, 200)];
//    pickerView.backgroundColor = [UIColor whiteColor];
//    
//    self.picker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 45, self.view.frame.size.width, 100)];
//    self.picker.datePickerMode = UIDatePickerModeDate;
//    self.picker.timeZone = [NSTimeZone localTimeZone];
////    picker.delegate = self;
//    [pickerView addSubview:self.picker];
//    [self.picker addTarget:self action:@selector(done) forControlEvents:UIControlEventValueChanged];
//    
//    return pickerView;
//}
//
//- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
//    [self.pickViewer resignFirstResponder];
//    pickerView.hidden = YES; //Show the pickerview again when you neeed it
//}
//
//-(void)done {
//    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
//    NSString *dateStri=[dateFormat stringFromDate:self.picker.date];
//    [self.pickViewer setText:[NSString stringWithFormat:@"%@",dateStri]];
//}

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

@end
