//
//  WJZViewController.m
//  WebViewDemo
//
//  Created by wangjiazheng on 13-12-27.
//  Copyright (c) 2013年 wangjiazheng. All rights reserved.
//

#import "WJZViewController.h"

@interface WJZViewController ()
{
    UIActivityIndicatorView * activity;
    UIAlertView * alertView;
}
@end

@implementation WJZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //[self loadDocument:@"student.xls" inView:self.webView];
    NSURL * url = [NSURL URLWithString:@"http://image.baidu.com"];
    NSURLRequest*request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    //[self.view:request];

	// Do any additional setup after loading the view, typically from a nib.
}

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    alertView = [[UIAlertView alloc]initWithTitle:@"正在加载....." message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:nil, nil];
    [alertView show];
    
    
    activity = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    activity.center = CGPointMake(160, 300);
    [alertView addSubview:activity];
    [activity startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    [alertView dismissWithClickedButtonIndex:0 animated:YES];
    [activity stopAnimating];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadDocument:(NSString*)documentName inView:(UIWebView*)webView
{
    NSString * path = [[NSBundle mainBundle]pathForResource:documentName ofType:nil];
    NSURL * url = [NSURL fileURLWithPath:path];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}


@end
