//
//  ViewController.m
//  CVConfiguration
//
//  Created by 陈世翰 on 16/7/20.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ChanViewConfiguration.h"
@interface ViewController ()
/**
 *   <#decr#>
 */
@property (nonatomic,strong)UIButton *testButton;
/**
 *   <#decr#>
 */
@property (nonatomic,strong)UILabel *testLabel;
/**
 *   <#decr#>
 */
@property (nonatomic,strong)UIView *testView;
/**
 *   <#decr#>
 */
@property (nonatomic,strong)UITableView *testTableView;
/**
 *   <#decr#>
 */
@property (nonatomic,strong)UISearchBar *testSearchBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.testView = [[UIView alloc]initWithFrame:(CGRect){50,50,50,50}];
    self.testView.CVC.viewBorder([UIColor redColor],CVC_ONE_PIX_HEIGHT).viewCornerRatioToHeight(0.5).viewBackGroundColor([UIColor yellowColor]);
    
    self.testLabel = [[UILabel alloc]initWithFrame:(CGRect){25,150,80,100}];
    self.testLabel.CVC.labelFontSize(15).labelAlignment(NSTextAlignmentCenter).labelTextColor([UIColor blueColor]).labelNumOfLines(0).viewBackGroundColor([UIColor cyanColor]);
    self.testLabel.text = @"交流QQ群518241824,QQ284766719,注明来因";
    
    //以下enum在 UIView+ChanViewConfiguration.h 上面
//#pragma mark __________________button_Enum_____________________
//    typedef NS_ENUM(NSUInteger, ChanButtonEdgeInsetsStyle) {
//        ChanButtonEdgeInsetsStyleTop, // image在上，label在下
//        ChanButtonEdgeInsetsStyleLeft, // image在左，label在右
//        ChanButtonEdgeInsetsStyleBottom, // image在下，label在上
//        ChanButtonEdgeInsetsStyleRight // image在右，label在左
//    };
    self.testButton = [[UIButton alloc]initWithFrame:(CGRect){150,150,100,40}];
    self.testButton.CVC.buttonImage([UIImage imageNamed:@"public_phone_icon"],UIControlStateNormal).buttonTitle(@"284766710",0).buttonResponse(self,@selector(click:),UIControlEventTouchUpInside).buttonTitleFontSize(14).buttonLayoutContent(ChanButtonEdgeInsetsStyleLeft,5).buttonTitleColor([UIColor redColor],0).viewBackGroundColor([UIColor yellowColor]);
    
    
    //这个数据源就懒得写了，不在界面显示
    self.testTableView = [[UITableView alloc]init];
    //此方法注册的cell，identifier默认为nibname
//    [self.testTableView cvc_tableViewRegisterCellWithNibNames:<#(NSArray *)#>]
    //此方法注册的cell，identifier默认为classname
//    [self.testTableView cvc_tableViewRegisterCellWithClassNames:<#(NSArray *)#>]
    
//    [self.testTableView cvc_tableViewRegisterHeaderFooterViewWithNibNames:<#(NSArray *)#>]
    
//      [self.testTableView cvc_tableViewRegisterHeaderFooterViewWithClassNames:<#(NSArray *)#>]
    
    
    [self.testTableView setUpDefaultSettings];
    //或者
    self.testTableView.CVC.tableViewDefaultSettings();
    
    self.testSearchBar = [[UISearchBar alloc]initWithFrame:(CGRect){10,300,200,40}];
     self.testSearchBar.placeholder = @"fas";
     UITextField *textfield = [self.testSearchBar valueForKey:@"_searchField"];
    self.testSearchBar.CVC.searchBarTextFontSize(14).searchBarPlaceholderColor([UIColor blueColor]).searchBarTextColor([UIColor redColor]);
   
    [self.view cvc_addSubviews:@[self.testSearchBar,self.testButton,self.testView,self.testLabel]];
}
-(void)click:(id)sender{
    NSLog(@"click");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
