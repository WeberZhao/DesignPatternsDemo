//
//  ViewController.m
//  DesignPatternsDemo
//
//  Created by Weber on 2019/11/8.
//  Copyright © 2019 Weber. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int state;
}
@property (weak) IBOutlet NSTextField *pathTextField;

@end

@implementation ViewController

//- (void)awakeFromNib{

//
//}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
                WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    
//                config.preferences.javaScriptEnabled = YES;
//                config.suppressesIncrementalRendering = YES; // 是否支持记忆读取
                [config.preferences setValue:@YES forKey:@"allowFileAccessFromFileURLs"];//支持跨域
    self.webView = [[WKWebView alloc] initWithFrame:self.view.bounds configuration:config];
    self.webView.UIDelegate = self;
    [self.view addSubview:self.webView];
    
    //@""
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://m1-uat.yxzq.com/webapp/open-account/deposit.html?userToken=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzZXNzaW9uIjoiYzFhOWU2ZDdkNWU3NGU0MWE0YmI2M2ZkMzU0NWRhMjkiLCJzb3VyY2UiOiJ3ZWIiLCJ1dWlkIjozNDMwMjExNDU2ODI4NjIwODB9.F9gyigA3kdzFKMcl1VXZZKIVW4PdZTVsKWDgHriIcGM&pwd=(null)&env=PC"]]];
}

-(WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures
{
    if (!navigationAction.targetFrame.isMainFrame) {
        [webView loadRequest:navigationAction.request];
    }
    return nil;
}

- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler{
    
}

- (void)webView:(WKWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL result))completionHandler{
    
}

- (void)webView:(WKWebView *)webView runJavaScriptTextInputPanelWithPrompt:(NSString *)prompt defaultText:(nullable NSString *)defaultText initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(NSString * _Nullable result))completionHandler{
    
}

- (void)webView:(WKWebView *)webView runOpenPanelWithParameters:(WKOpenPanelParameters *)parameters initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(NSArray<NSURL *> * _Nullable URLs))completionHandler{
    
    NSOpenPanel* panel = [NSOpenPanel openPanel];
    
    [panel setAllowsMultipleSelection:NO];  //是否允许多选file
    
    [panel beginSheet:self.view.window completionHandler:^(NSModalResponse returnCode) {
        if (returnCode == NSModalResponseOK) {
            completionHandler([panel URLs]);
        }
    }];
    
//    [panel beginWithCompletionHandler:^(NSInteger result) {
//        if (result == NSOKButton) {
//            completionHandler([panel URLs]);
//        }
//
//    }];
  
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}
- (IBAction)openPC:(id)sender {
    
    NSString *path = self.pathTextField.stringValue;
    
    NSTask *task = [[NSTask alloc] init];
    [task setLaunchPath:@"/usr/bin/osascript"];
    NSString *lunchPath = path;
    
    [task setArguments:[NSArray arrayWithObject:lunchPath]];
    [task launch];
    
//    [self openAppWithPath:@"/Applications/Parallels Client.app"];
}

- (IBAction)openURL:(id)sender {
    [self openAppWithPath:@"https://www.yicai.com/tv"];
}

- (IBAction)openJYB:(id)sender {
    [self openAppWithPath:@"/Applications/MAC_TradeBook.app"];
}

- (void)openAppWithPath:(NSString*)path{
    NSTask *task = [[NSTask alloc] init];
    [task setLaunchPath:@"/usr/bin/open"];
    NSString *lunchPath = path;

    [task setArguments:[NSArray arrayWithObject:lunchPath]];
    [task launch];
}

- (IBAction)autoRun:(id)sender {
    [self loopLaunchApp];
}

- (void)loopLaunchApp{
    [NSTimer scheduledTimerWithTimeInterval:60*60*2 target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
}


- (void)onTimer{
    if(state == 0){
        state = 1;
        
        [self openURL:nil];
    }else if(state == 1){
        state = 2;
        
        [self openJYB:nil];
    }else if(state == 2){
        state = 0;
        
        [self openPC:nil];
    }
}

@end
