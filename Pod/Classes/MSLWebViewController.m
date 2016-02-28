//
//  MSLWebViewController.m
//  Pods
//
//  Created by Giuseppe Valenti on 2/27/16.
//
//

#import "MSLWebViewController.h"

@interface MSLWebViewController (){
    UIWebView * wv;
}

@end



@implementation MSLWebViewController

static NSString *youTubeVideoHTML = @"<!DOCTYPE html><html><head><style>body{margin:0px 0px 0px 0px;}</style></head> <body> <div id=\"player\"></div> <script> var tag = document.createElement('script'); tag.src = \"http://www.youtube.com/player_api\"; var firstScriptTag = document.getElementsByTagName('script')[0]; firstScriptTag.parentNode.insertBefore(tag, firstScriptTag); var player; function onYouTubePlayerAPIReady() { player = new YT.Player('player', { width:'%0.0f', height:'%0.0f', videoId:'%@', events: { 'onReady': onPlayerReady, } }); } function onPlayerReady(event) { event.target.playVideo(); } </script> </body> </html>";

- (void)playVideoWithId:(NSString *)videoId {
    NSString *html = [NSString stringWithFormat:youTubeVideoHTML, self.view.frame.size.width, self.view.frame.size.height, videoId];
    [wv loadHTMLString:html baseURL:[[NSBundle mainBundle] resourceURL]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    wv = [[UIWebView alloc] initWithFrame:self.view.frame];
    self.view = wv;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
