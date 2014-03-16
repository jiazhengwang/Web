//
//  WJZViewController.h
//  WebViewDemo
//
//  Created by wangjiazheng on 13-12-27.
//  Copyright (c) 2013年 wangjiazheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WJZViewController : UIViewController<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
