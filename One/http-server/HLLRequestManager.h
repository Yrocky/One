//
//  HLLRequestManager.h
//  HLLCodingNetFramework
//
//  Created by admin on 16/1/6.
//  Copyright © 2016年 HLL. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^requestResult)(id data,NSError * error);

typedef NS_ENUM(NSUInteger ,UserCollectionType) {

    UserCollectionTypeMusic     = 0,// 图文
    UserCollectionTypeEssay     = 1,// 文章
    UserCollectionTypeSerial    = 2 // 影库
};
@interface HLLRequestManager : NSObject

+ (instancetype) shareRequestManager;

#pragma mark - home
- (void) requestManager_requestHomeResult:(requestResult)result;
- (void) requestManager_requestReadingBannerDetailInfoWithBannerId:(NSString *)bannerId result:(requestResult)result;

#pragma mark - reading
- (void) requestManager_requestReadingBannerInfoResult:(requestResult)result;
- (void) requestManager_requestReadingBannerDetailInfoResult:(requestResult)result;

#pragma mark - essay
- (void) requestManager_requestEssayWithEssayId:(NSString *)essayId result:(requestResult)result;
- (void) requestManager_requestHotEssayCommentWithEssayId:(NSString *)essayId  result:(requestResult)result;
- (void) requestManager_requestEssayCommentWithEssayId:(NSString *)essayId  result:(requestResult)result;

#pragma mark - user
- (void) requestManager_requestUserInfoCurrentUser:(BOOL)isCurrent withUserId:(NSString *)userId result:(requestResult)result;
- (void) requestManager_requestUserOtherCenterWithUserId:(NSString *)userId result:(requestResult)result;
- (void) requestManager_requestUserWithUserId:(NSString *)userId collection:(UserCollectionType)collectionType result:(requestResult)result;


#pragma mark - music
- (void) requestManager_requestMusicDetailWithMusicId:(NSString *)musicId result:(requestResult)result;
- (void) requestManager_requestMusicRelatedMusicWithMusicId:(NSString *)musicId result:(requestResult)result;

@end
