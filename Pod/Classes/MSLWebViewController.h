//
//  MSLWebViewController.h
//  Pods
//
//  Created by Giuseppe Valenti on 2/27/16.
//
//

#import <UIKit/UIKit.h>

@protocol embedYoutubeVideoDelegate <NSObject>

- (void)playVideoWithId:(NSString *)videoId;

@end

@interface MSLWebViewController : UIViewController <embedYoutubeVideoDelegate>

@end
