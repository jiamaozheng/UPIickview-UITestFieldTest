//
//  ViewController.h
//  UIPickviewerTest
//
//  Created by Jiamao Zheng on 7/13/15.
//  Copyright (c) 2015 Emerge Media. All rights reserved.
// http://stackoverflow.com/questions/26904119/how-to-open-a-pickerviewdropdown-on-uitextview-click-in-ios


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate,UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *pickViewer;

@property (weak, nonatomic) IBOutlet UILabel *icon;


@property (weak, nonatomic) IBOutlet UIButton *checkBtn;
- (IBAction)checkButtonTapped:(UIButton *)sender;

@end

