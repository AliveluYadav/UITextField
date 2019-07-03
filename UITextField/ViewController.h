//
//  ViewController.h
//  UITextField
//
//  Created by Alivelu Ravula on 2/8/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property UITextField *textFieldFN;
@property UITextField *textFieldLN;
@property UITextField *textFieldAge;
@property UITextField *textFieldEmail;
@property UITextField *textFieldMobileNo;
@property UILabel *gender;
@property UISegmentedControl *seg;
@property UITextField *textFieldUsrNam;
@property UITextField *textFieldPswd;
@property UITextField *textFieldConfPaswd;
@property UILabel *lblFN;
@property UILabel *lblLN;
@property UILabel *lblAge;
@property UILabel *lblEmail;
@property UILabel *lblMblNo;
@property UILabel *lblUN;
@property UILabel *lblPswd;
@property UILabel *lblConfPswd;

@property UIButton *subButtn;


@end

