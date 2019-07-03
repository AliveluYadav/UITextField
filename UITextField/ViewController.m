//
//  ViewController.m
//  UITextField
//
//  Created by Alivelu Ravula on 2/8/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor orangeColor];
    [self createUI];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)createUI
{
    self.textFieldFN=[[UITextField alloc]initWithFrame:CGRectMake(20, 30, 350, 35)];
    [self.textFieldFN setBorderStyle:UITextBorderStyleRoundedRect];
    self.textFieldFN.placeholder=@"Enter FirstName";
    self.textFieldFN.textAlignment=NSTextAlignmentLeft;
    self.textFieldFN.textColor=[UIColor blackColor];
    [self.textFieldFN setClearButtonMode:UITextFieldViewModeWhileEditing];
    self.textFieldFN.font=[UIFont systemFontOfSize:20];
    self.textFieldFN.minimumFontSize=15;
    self.textFieldFN.adjustsFontSizeToFitWidth=YES;
    [self.textFieldFN setAutocapitalizationType:UITextAutocapitalizationTypeWords];
    [self.textFieldFN setAutocorrectionType:UITextAutocorrectionTypeNo];
    [self.textFieldFN setSpellCheckingType:UITextSpellCheckingTypeNo];
    [self.textFieldFN setKeyboardType:UIKeyboardTypeAlphabet];
    [self.textFieldFN setKeyboardAppearance:UIKeyboardAppearanceDark];
    [self.textFieldFN setReturnKeyType:UIReturnKeyDone];
    self.textFieldFN.enablesReturnKeyAutomatically=YES;
    self.textFieldFN.secureTextEntry=NO;
    [self.view addSubview:self.textFieldFN];
    self.textFieldFN.delegate=self;

    
        self.lblFN=[[UILabel alloc]initWithFrame:CGRectMake(40, 70, 350, 20)];
        self.lblFN.backgroundColor=[UIColor orangeColor];
        self.lblFN.textColor=[UIColor whiteColor];
        [self.view addSubview:self.lblFN];
        

    
    self.textFieldLN=[[UITextField alloc]initWithFrame:CGRectMake(20, 100, 350, 35)];
    [self.textFieldLN setBorderStyle:UITextBorderStyleRoundedRect];
    self.textFieldLN.placeholder=@"Enter LastName";
    self.textFieldLN.textAlignment=NSTextAlignmentLeft;
    self.textFieldLN.textColor=[UIColor blackColor];
    [self.textFieldLN setClearButtonMode:UITextFieldViewModeAlways];
    self.textFieldLN.font=[UIFont systemFontOfSize:20];
    self.textFieldLN.minimumFontSize=15;
    self.textFieldLN.adjustsFontSizeToFitWidth=YES;
    [self.textFieldLN setAutocapitalizationType:UITextAutocapitalizationTypeWords];
    [self.textFieldLN setAutocorrectionType:UITextAutocorrectionTypeNo];
    [self.textFieldLN setSpellCheckingType:UITextSpellCheckingTypeNo];
    [self.textFieldLN setKeyboardType:UIKeyboardTypeASCIICapable];
    [self.textFieldLN setKeyboardAppearance:UIKeyboardAppearanceDark];
    [self.textFieldLN setReturnKeyType:UIReturnKeyDone];
    self.textFieldLN.enablesReturnKeyAutomatically=YES;
    self.textFieldLN.secureTextEntry=NO;
        [self.view addSubview:self.textFieldLN];
    self.textFieldLN.delegate=self;
   // [self.self.textFieldFN addTarget:self action:@selector(textView:shouldInteractWithURL:inRange) forControlEvents:<#(UIControlEvents)#>]

    self.lblLN=[[UILabel alloc]initWithFrame:CGRectMake(40, 140, 350, 20)];
    self.lblLN.backgroundColor=[UIColor orangeColor];
    self.lblLN.textColor=[UIColor whiteColor];
    [self.view addSubview:self.lblLN];
    
    
    self.textFieldAge=[[UITextField alloc]initWithFrame:CGRectMake(20, 170, 350, 35)];
    [self.textFieldAge setBorderStyle:UITextBorderStyleRoundedRect];
    self.textFieldAge.placeholder=@"Age";
    self.textFieldAge.textAlignment=NSTextAlignmentLeft;
    self.textFieldAge.textColor=[UIColor blackColor];
    [self.textFieldAge setClearButtonMode:UITextFieldViewModeAlways];
    self.textFieldAge.font=[UIFont systemFontOfSize:20];
    self.textFieldAge.minimumFontSize=15;
    self.textFieldAge.adjustsFontSizeToFitWidth=YES;
    [self.textFieldAge setAutocapitalizationType:UITextAutocapitalizationTypeWords];
    [self.textFieldAge setAutocorrectionType:UITextAutocorrectionTypeNo];
    [self.textFieldAge setSpellCheckingType:UITextSpellCheckingTypeNo];
    [self.textFieldAge setKeyboardType:UIKeyboardTypeDefault];
    [self.textFieldAge setKeyboardAppearance:UIKeyboardAppearanceDark];
    [self.textFieldAge setReturnKeyType:UIReturnKeyDone];
    self.textFieldAge.enablesReturnKeyAutomatically=YES;
    self.textFieldAge.secureTextEntry=NO;
    
    [self.view addSubview:self.textFieldAge];
    self.textFieldAge.delegate=self;
    
    self.lblAge=[[UILabel alloc]initWithFrame:CGRectMake(40, 210, 350, 20)];
    self.lblAge.backgroundColor=[UIColor orangeColor];
    self.lblAge.textColor=[UIColor whiteColor];
    [self.view addSubview:self.lblAge];
    

    
    self.textFieldMobileNo=[[UITextField alloc]initWithFrame:CGRectMake(20, 240, 350, 35)];
    [self.textFieldMobileNo setBorderStyle:UITextBorderStyleRoundedRect];
    self.textFieldMobileNo.placeholder=@"Enter Mobile Number";
    self.textFieldMobileNo.textAlignment=NSTextAlignmentLeft;
    self.textFieldMobileNo.textColor=[UIColor blackColor];
    [self.textFieldMobileNo setClearButtonMode:UITextFieldViewModeAlways];
    self.textFieldMobileNo.font=[UIFont systemFontOfSize:20];
    self.textFieldMobileNo.minimumFontSize=15;
    self.textFieldMobileNo.adjustsFontSizeToFitWidth=YES;
    [self.textFieldMobileNo setAutocapitalizationType:UITextAutocapitalizationTypeWords];
    [self.textFieldMobileNo setAutocorrectionType:UITextAutocorrectionTypeNo];
    [self.textFieldMobileNo setSpellCheckingType:UITextSpellCheckingTypeNo];
    [self.textFieldMobileNo setKeyboardType:UIKeyboardTypeEmailAddress];
    [self.textFieldMobileNo setKeyboardAppearance:UIKeyboardAppearanceDark];
    [self.textFieldMobileNo setReturnKeyType:UIReturnKeyDone];
    self.textFieldMobileNo.enablesReturnKeyAutomatically=YES;
    self.textFieldMobileNo.secureTextEntry=NO;
    
    [self.view addSubview:self.textFieldMobileNo];
    self.textFieldMobileNo.delegate=self;
    
    self.lblMblNo=[[UILabel alloc]initWithFrame:CGRectMake(40, 280, 350, 20)];
    self.lblMblNo.backgroundColor=[UIColor orangeColor];
    self.lblMblNo.textColor=[UIColor whiteColor];
    [self.view addSubview:self.lblMblNo];
    
    
    self.textFieldEmail=[[UITextField alloc]initWithFrame:CGRectMake(20, 310, 350, 35)];
    [self.textFieldEmail setBorderStyle:UITextBorderStyleRoundedRect];
    self.textFieldEmail.placeholder=@"Enter Email Address";
    self.textFieldEmail.textAlignment=NSTextAlignmentLeft;
    self.textFieldEmail.textColor=[UIColor blackColor];
    [self.textFieldEmail setClearButtonMode:UITextFieldViewModeAlways];
    self.textFieldEmail.font=[UIFont systemFontOfSize:20];
    self.textFieldEmail.minimumFontSize=15;
    self.textFieldEmail.adjustsFontSizeToFitWidth=YES;
    [self.textFieldEmail setAutocapitalizationType:UITextAutocapitalizationTypeWords];
    [self.textFieldEmail setAutocorrectionType:UITextAutocorrectionTypeNo];
    [self.textFieldEmail setSpellCheckingType:UITextSpellCheckingTypeNo];
    [self.textFieldEmail setKeyboardType:UIKeyboardTypeEmailAddress];
    [self.textFieldEmail setKeyboardAppearance:UIKeyboardAppearanceDark];
    [self.textFieldEmail setReturnKeyType:UIReturnKeyDone];
    self.textFieldEmail.enablesReturnKeyAutomatically=YES;
    self.textFieldEmail.secureTextEntry=NO;
    
    [self.view addSubview:self.textFieldEmail];
    self.textFieldEmail.delegate=self;
    
        self.lblEmail=[[UILabel alloc]initWithFrame:CGRectMake(40, 350, 350, 20)];
        self.lblEmail.backgroundColor=[UIColor orangeColor];
        self.lblEmail.textColor=[UIColor whiteColor];
        [self.view addSubview:self.lblEmail];
        

    
    self.gender=[[UILabel alloc]initWithFrame:CGRectMake(20, 380, 100, 35)];
    self.gender.backgroundColor=[UIColor whiteColor];
    self.gender.text=@" Gender";
    self.gender.textColor=[UIColor blueColor];
    [self.view addSubview:self.gender];
    
    self.seg=[[UISegmentedControl alloc]initWithItems:@[@"Female",@"Male"]];
    self.seg.frame=CGRectMake(200, 380, 170, 35);
    [self.view addSubview:self.seg];
    

    
    self.textFieldUsrNam=[[UITextField alloc]initWithFrame:CGRectMake(20, 450, 350, 35)];
    [self.textFieldUsrNam setBorderStyle:UITextBorderStyleRoundedRect];
    self.textFieldUsrNam.placeholder=@"Enter UserName";
    self.textFieldUsrNam.textAlignment=NSTextAlignmentLeft;
    self.textFieldUsrNam.textColor=[UIColor blackColor];
    [self.textFieldUsrNam setClearButtonMode:UITextFieldViewModeAlways];
    self.textFieldUsrNam.font=[UIFont systemFontOfSize:20];
    self.textFieldUsrNam.minimumFontSize=15;
    self.textFieldUsrNam.adjustsFontSizeToFitWidth=YES;
    [self.textFieldUsrNam setAutocapitalizationType:UITextAutocapitalizationTypeWords];
    [self.textFieldUsrNam setAutocorrectionType:UITextAutocorrectionTypeNo];
    [self.textFieldUsrNam setSpellCheckingType:UITextSpellCheckingTypeNo];
    [self.textFieldUsrNam setKeyboardType:UIKeyboardTypeAlphabet];
    [self.textFieldUsrNam setKeyboardAppearance:UIKeyboardAppearanceDark];
    [self.textFieldUsrNam setReturnKeyType:UIReturnKeyDone];
    self.textFieldUsrNam.enablesReturnKeyAutomatically=YES;
    self.textFieldUsrNam.secureTextEntry=NO;
    
    [self.view addSubview:self.textFieldUsrNam];
    self.textFieldUsrNam.delegate=self;
    
    self.lblUN=[[UILabel alloc]initWithFrame:CGRectMake(40, 490, 350, 20)];
    self.lblUN.backgroundColor=[UIColor orangeColor];
    self.lblUN.textColor=[UIColor whiteColor];
    [self.view addSubview:self.lblUN];
    


    self.textFieldPswd=[[UITextField alloc]initWithFrame:CGRectMake(20, 520, 350, 35)];
    [self.textFieldPswd setBorderStyle:UITextBorderStyleRoundedRect];
    self.textFieldPswd.placeholder=@"Enter Password";
    self.textFieldPswd.textAlignment=NSTextAlignmentLeft;
    self.textFieldPswd.textColor=[UIColor blackColor];
    [self.textFieldPswd setClearButtonMode:UITextFieldViewModeAlways];
    self.textFieldPswd.font=[UIFont systemFontOfSize:20];
    self.textFieldPswd.minimumFontSize=15;
    self.textFieldPswd.adjustsFontSizeToFitWidth=YES;
    [self.textFieldPswd setAutocapitalizationType:UITextAutocapitalizationTypeWords];
    [self.textFieldPswd setAutocorrectionType:UITextAutocorrectionTypeNo];
    [self.textFieldPswd setSpellCheckingType:UITextSpellCheckingTypeNo];
    [self.textFieldPswd setKeyboardType:UIKeyboardTypeDefault];
    [self.textFieldPswd setKeyboardAppearance:UIKeyboardAppearanceDark];
    [self.textFieldPswd setReturnKeyType:UIReturnKeyDone];
    self.textFieldPswd.enablesReturnKeyAutomatically=YES;
    self.textFieldPswd.secureTextEntry=NO;
    
    [self.view addSubview:self.textFieldPswd];
    self.textFieldPswd.delegate=self;

    
    self.lblPswd=[[UILabel alloc]initWithFrame:CGRectMake(40, 560, 350, 20)];
    self.lblPswd.backgroundColor=[UIColor orangeColor];
    self.lblPswd.textColor=[UIColor whiteColor];
    [self.view addSubview:self.lblPswd];
    

    
    self.textFieldConfPaswd=[[UITextField alloc]initWithFrame:CGRectMake(20, 590, 350, 35)];
    [self.textFieldConfPaswd setBorderStyle:UITextBorderStyleRoundedRect];
    self.textFieldConfPaswd.placeholder=@"Re-type Password";
    self.textFieldConfPaswd.textAlignment=NSTextAlignmentLeft;
    self.textFieldConfPaswd.textColor=[UIColor blackColor];
    [self.textFieldConfPaswd setClearButtonMode:UITextFieldViewModeAlways];
    self.textFieldConfPaswd.font=[UIFont systemFontOfSize:20];
    self.textFieldConfPaswd.minimumFontSize=15;
    self.textFieldConfPaswd.adjustsFontSizeToFitWidth=YES;
    [self.textFieldConfPaswd setAutocorrectionType:UITextAutocorrectionTypeNo];
    [self.textFieldConfPaswd setSpellCheckingType:UITextSpellCheckingTypeNo];
    [self.textFieldConfPaswd setKeyboardType:UIKeyboardTypeDefault];
    [self.textFieldConfPaswd setKeyboardAppearance:UIKeyboardAppearanceDark];
    [self.textFieldConfPaswd setReturnKeyType:UIReturnKeyDone];
    self.textFieldConfPaswd.enablesReturnKeyAutomatically=YES;
    self.textFieldConfPaswd.secureTextEntry=NO;
        [self.view addSubview:self.textFieldConfPaswd];
    self.textFieldConfPaswd.delegate=self;
    
    self.lblConfPswd=[[UILabel alloc]initWithFrame:CGRectMake(40, 630, 350, 20)];
    self.lblConfPswd.backgroundColor=[UIColor orangeColor];
    self.lblConfPswd.textColor=[UIColor whiteColor];
    [self.view addSubview:self.lblConfPswd];
    

    self.subButtn=[[UIButton alloc]initWithFrame:CGRectMake(300, 660, 90, 35)];
    self.subButtn.backgroundColor=[UIColor blueColor];
    [self.subButtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.subButtn setTitle:@" SUBMIT " forState:UIControlStateNormal];
    [self.view addSubview:self.subButtn];
    
    [self.subButtn addTarget:self action:@selector(onButtonChange:) forControlEvents:UIControlEventTouchUpInside];

}
//UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Title" message:@"This is an alert view" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];




- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    BOOL returnValue=NO;
    
    if(textField==self.textFieldFN)
    {
    returnValue=YES;
    }
  else if(textField==self.textFieldLN)
  {
      
            if(self.textFieldFN.text.length>=5)
                   {
                       returnValue=YES;
                       self.lblFN.text=@"";
                         }
      
            else if(self.textFieldFN.text.length==0)
            {
                self.lblFN.text=@"please enter first name";
                
                
            }
            else if(self.textFieldFN.text.length<5)
            {
                self.lblFN.text=@"First name should have atleast 5 characters";
                
            }
      
    
  }
  else if(textField==self.textFieldAge)
  {
  if(self.textFieldFN.text.length>=5&&self.textFieldLN.text.length>=5)
  {
      returnValue=YES;
      
      self.lblLN.text=@"";
  }
  else if(self.textFieldLN.text.length==0)
  {
      self.lblLN.text=@"please enter Last name";
      
      
  }
  else if(self.textFieldLN.text.length<5)
  {
      self.lblLN.text=@" Last name should have atleast 5 characters";
  }
  }

  else if(textField==self.textFieldMobileNo)
      
  {
      if(self.textFieldFN.text.length>=5&&self.textFieldLN.text.length>=5&&self.textFieldAge.text.intValue<120)
      {
          returnValue=YES;
          
          self.lblAge.text=@"";
      }
      else if(self.textFieldAge.text.length==NO)
      {
          self.lblAge.text=@"please enter Age";
          
          
      }
      else if(self.textFieldAge.text.intValue>120)
      {
          self.lblAge.text=@"please enter  valid number";
      }

  }
  
  else if(textField==self.textFieldEmail)
      
  {
      if((self.textFieldFN.text.length>=5)&&(self.textFieldLN.text.length>=5)&&(self.textFieldAge.text.intValue<120)&&(self.textFieldMobileNo.text.integerValue>=6000000000)&&(self.textFieldMobileNo.text.integerValue<=9999999999))
      {
          returnValue=YES;
          
          self.lblMblNo.text=@"";
      }
      else if(self.textFieldMobileNo.text.length==NO)
      {
          self.lblMblNo.text=@"please enter mobile number";
          
          
      }
      
  }
  else if(textField==self.textFieldUsrNam)
      
  {
      if((self.textFieldFN.text.length>=5)&&(self.textFieldLN.text.length>=5)&&(self.textFieldAge.text.intValue<120)&&(self.textFieldMobileNo.text.integerValue>=6000000000)&&(self.textFieldMobileNo.text.integerValue<=9999999999)&&[self validateEmail:self.textFieldEmail.text])
      {
          returnValue=YES;
          
          self.lblEmail.text=@"";
      }
      else if(self.textFieldEmail.text.length==NO)
      {
          self.lblEmail.text=@"please enter Email ID";
          
          
      }
      
  }

  else if(textField==self.textFieldPswd)
      
  {
      if((self.textFieldFN.text.length>=5)&&(self.textFieldLN.text.length>=5)&&(self.textFieldAge.text.intValue<120)&&(self.textFieldMobileNo.text.integerValue>=6000000000)&&(self.textFieldMobileNo.text.integerValue<=9999999999)&&[self validateEmail:self.textFieldEmail.text]&&(self.textFieldUsrNam.text.length>=5))
      {
          returnValue=YES;
          
          
          self.lblUN.text=@"";
      }
      else if(self.textFieldUsrNam.text.length==0)
      {
          self.lblUN.text=@"please enter user name";
          
          
      }
      else if(self.textFieldUsrNam.text.length<5)
      {
          self.lblUN.text=@"user name should have atleast 5 characters";
      }
  }
    
  else if(textField==self.textFieldConfPaswd)
      
  {
      if((self.textFieldFN.text.length>=5)&&(self.textFieldLN.text.length>=5)&&(self.textFieldAge.text.intValue<120)&&(self.textFieldMobileNo.text.integerValue>=6000000000)&&(self.textFieldMobileNo.text.integerValue<=9999999999)&&[self validateEmail:self.textFieldEmail.text]&&(self.textFieldUsrNam.text.length>=5)&&[self isValidPassword:self.textFieldPswd.text])
      {
          returnValue=YES;
          
          
          self.lblPswd.text=@"";
      }
      else if(self.textFieldPswd.text.length==0)
      {
          self.lblPswd.text=@"please enter password ";
          
          
      }
      else
      {
          self.lblPswd.text=@"AtLeast 8 Min Chars,1 Special Char,1 Cap Letter,1 Special Char";
      }
  }

    return returnValue;
    

}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{


}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    return YES;


}
- (void)textFieldDidEndEditing:(UITextField *)textField
{

   



}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if ([textField.text stringByReplacingCharactersInRange:range withString:string].length < textField.text.length) {
        
        return YES;
        
    }
    

    BOOL returnValue=YES;
    
    if(textField==self.textFieldFN)
    {
        
        NSCharacterSet *strCharSet = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
        
        strCharSet = [strCharSet invertedSet];
        
        NSRange r = [string rangeOfCharacterFromSet:strCharSet];
        if (r.location != NSNotFound)
        {
            NSLog(@"the string contains illegal characters");
          self.lblFN.text=@"please enter alphabets only";

            returnValue= NO;
        }

        
        else{
           

            returnValue= YES;
        }
    }
    

 else   if(textField==self.textFieldLN)
    {
        if ([textField.text stringByReplacingCharactersInRange:range withString:string].length < textField.text.length) {
            
            return YES;
            
        }
        

        NSCharacterSet *strChar = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
        
        strChar = [strChar invertedSet];
        
        NSRange r = [string rangeOfCharacterFromSet:strChar];
        if (r.location != NSNotFound) {
            NSLog(@"the string contains illegal characters");
            self.lblLN.text=@"please enter alphabets only";
            
            returnValue= NO;
        }
        else{
            
            
            returnValue= YES;
        }}
    
 else if (textField==self.textFieldAge)
 {
     if ([textField.text stringByReplacingCharactersInRange:range withString:string].length < textField.text.length) {
         
         return YES;
         
     }
     

       NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
       
       if ([string rangeOfCharacterFromSet:set].location == NSNotFound) {
           returnValue= NO;
          self.lblAge.text=@"enter numbers only";
       }
       else{
           
           
           returnValue= YES;

              }
   }
    
    
    if(textField==self.textFieldMobileNo)
    {
        if ([textField.text stringByReplacingCharactersInRange:range withString:string].length < textField.text.length) {
            
            return YES;
            
        }
        

        NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"1234567890"];
        if ([string rangeOfCharacterFromSet:set].location == NSNotFound)
        {
            self.lblMblNo.text=@"enter numbers only";

            returnValue=NO;
        }
        else{
            
            
            returnValue= YES;
            
        }

        
               }
        
    

    
    
      return returnValue;
    


}





- (BOOL)textFieldShouldClear:(UITextField *)textField
{
    
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    if([self.textFieldPswd.text isEqualToString:self.textFieldConfPaswd.text])
    {
    
    
    }
    else{
    
    self.lblConfPswd.text=@"password mismatch";
    
    }
    
    
    
    [textField resignFirstResponder];
    return YES;
    
    
}

- (BOOL)validateEmail:(NSString *)emailStr {
    NSString *emailRegex = @"[A-Z0-9a-z._%+]+@[A-Za-z0-9.]+\\.[A-Za-z]{2,3}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:emailStr];
}



-(BOOL)isValidPassword:(NSString *)checkString{
    
    NSString *stricterFilterString = @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}";
    
    NSPredicate *passwordTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", stricterFilterString];
    
    return [passwordTest evaluateWithObject:checkString];
    
}
-(void)showAlert:(NSString *)strMessage

{
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"Alert" message:strMessage preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"Okay"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                }];
    
    UIAlertAction* noButton = [UIAlertAction
                               actionWithTitle:@"Cancel"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                               }];
    [alert addAction:yesButton];
    [alert addAction:noButton];
    
    [self presentViewController:alert animated:YES completion:nil];
}
-(IBAction)onButtonChange:(UIButton *)sender
{
if(((self.textFieldFN.text.length>=5)&&(self.textFieldLN.text.length>=5)&&(self.textFieldAge.text.intValue<120)&&(self.textFieldMobileNo.text.integerValue>=6000000000)&&(self.textFieldMobileNo.text.integerValue<=9999999999)&&[self validateEmail:self.textFieldEmail.text]&&(self.textFieldUsrNam.text.length>=5)&&[self isValidPassword:self.textFieldPswd.text]&&(self.seg.selectedSegmentIndex==0))||(self.seg.selectedSegmentIndex==1))
{
    
    
    if([self.textFieldPswd.text isEqualToString:self.textFieldConfPaswd.text])
    {
        [self showAlert:@"Submited Successfully"];
        self.lblConfPswd.text=@"";
        
    }
    else{
        
        self.lblConfPswd.text=@"password mismatch";
        
    }
    
   
}

else {
    [self showAlert:@"please first fill all the details"];

}

}



    @end

