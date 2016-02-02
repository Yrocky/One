//
//  HLLRequestManager.m
//  HLLCodingNetFramework
//
//  Created by admin on 16/1/6.
//  Copyright © 2016年 HLL. All rights reserved.
//

#import "HLLRequestManager.h"
#import "HLLNetClient.h"

#define ONE_BASE_URL @"http://v3.wufazhuce.com:8000/api"
#define ONE_IMAGE_URL @"http://image.wufazhuce.com"
#define ONE_MUSIC_URL @"http://music.wufazhuce.com"

@implementation HLLRequestManager

static HLLRequestManager *_instance;

+ (id)allocWithZone:(NSZone *)zone{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

+ (instancetype)shareRequestManager{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

#pragma mark - private
- (void) _requestUrl:(NSString *)url parameters:(NSDictionary *)params result:(requestResult)result{

    [[HLLNetClient shareClient] GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (result) {
            result(responseObject,nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (result) {
            result(nil,error);
        }
    }];
}

#pragma mark - home
- (void) requestManager_requestHomeResult:(requestResult)result{

    NSString * temp = [NSString stringWithFormat:@"%@/hp/more/0",ONE_BASE_URL];
    
    [self _requestUrl:temp
           parameters:nil
               result:result];
}
- (void) requestManager_requestImageWithImageFlag:(NSString *)imageFlag result:(requestResult)result{
    
    NSString * temp = [NSString stringWithFormat:@"%@/%@",ONE_IMAGE_URL,imageFlag];
    
    [self _requestUrl:temp
           parameters:nil
               result:result];
}

#pragma mark - reading
- (void) requestManager_requestReadingBannerInfoResult:(requestResult)result{

    NSString * temp = [NSString stringWithFormat:@"%@/reading/carousel",ONE_BASE_URL];
    
    [self _requestUrl:temp
           parameters:nil
               result:result];
}
- (void) requestManager_requestReadingBannerDetailInfoWithBannerId:(NSString *)bannerId result:(requestResult)result{

    NSString * temp = [NSString stringWithFormat:@"%@/reading/carousel/%@",ONE_BASE_URL,bannerId];
    
    [self _requestUrl:temp
           parameters:nil
               result:result];
}

#pragma mark - essay
- (void) requestManager_requestAllEssayListResult:(requestResult)result{

    NSString * temp = [NSString stringWithFormat:@"%@/reading/index",ONE_BASE_URL];
    
    [self _requestUrl:temp
           parameters:nil
               result:result];
}
- (void) requestManager_requestEssayWithEssayId:(NSString *)essayId result:(requestResult)result{

    NSString * temp = [NSString stringWithFormat:@"%@/essay/%@",ONE_BASE_URL,essayId];
    
    [self _requestUrl:temp
           parameters:nil
               result:result];
}

- (void) requestManager_requestHotEssayCommentWithEssayId:(NSString *)essayId  result:(requestResult)result{

    NSString * temp = [NSString stringWithFormat:@"%@/comment/praise/essay/%@/0",ONE_BASE_URL,essayId];
    
    [self _requestUrl:temp
           parameters:nil
               result:result];
}

- (void) requestManager_requestAudioEssayWithEssayFlag:(NSString *)essayFlag result:(requestResult)result{

    NSString * temp = [NSString stringWithFormat:@"%@/%@",ONE_MUSIC_URL,essayFlag];
    
    [self _requestUrl:temp
           parameters:nil
               result:result];
}
- (void) requestManager_requestLocalAudioEssayWithEssayFlag:(NSString *)essayFlag result:(requestResult)result{

    NSString * local = [NSString stringWithFormat:@"http://112.65.220.26/music.wufazhuce.com/%@",essayFlag];
    NSDictionary * params = @{@"wsiphost":@"local"};
    
    [self _requestUrl:local
           parameters:params
               result:result];
}
- (void) requestManager_requestEssayCommentWithEssayId:(NSString *)essayId  result:(requestResult)result{

    NSString * temp = [NSString stringWithFormat:@"%@/comment/praise/essay/%@/0",ONE_BASE_URL,essayId];
    
    [self _requestUrl:temp
           parameters:nil
               result:result];
}
#pragma mark - user
- (void) requestManager_requestUserInfoCurrentUser:(BOOL)isCurrent withUserId:(NSString *)userId result:(requestResult)result{

    NSString * temp = [NSString stringWithFormat:@"%@/user/info/%@",ONE_BASE_URL,userId];
    NSDictionary * parmeter = nil;
    if (isCurrent) {
        parmeter = @{@"jwt":@"sd"};
    }
    [self _requestUrl:temp
           parameters:parmeter
               result:result];
}
- (void) requestManager_requestUserOtherCenterWithUserId:(NSString *)userId result:(requestResult)result{

    NSString * temp = [NSString stringWithFormat:@"%@/othercenter/%@",ONE_BASE_URL,userId];
    
    [self _requestUrl:temp
           parameters:nil
               result:result];
}
- (void) requestManager_requestUserWithUserId:(NSString *)userId collection:(UserCollectionType)collectionType result:(requestResult)result;{

    NSArray * collectionTypeArray = @[@"music",@"essay",@"serial"];
    NSString * collection = collectionTypeArray[collectionType];
    
    NSString * temp = [NSString stringWithFormat:@"%@/works/%@/%@",ONE_BASE_URL,collection,userId];
    
    [self _requestUrl:temp
           parameters:nil
               result:result];}

#pragma mark - music
- (void) requestManager_requestMusicRelatedMusicWithMusicId:(NSString *)musicId result:(requestResult)result{

    NSString * temp = [NSString stringWithFormat:@"%@/related/music/%@",ONE_BASE_URL,musicId];
    
    [self _requestUrl:temp
           parameters:nil
               result:result];
}

- (void) requestManager_requestMusicDetailWithMusicId:(NSString *)musicId result:(requestResult)result{

    NSString * temp = [NSString stringWithFormat:@"%@/music/detail/%@",ONE_BASE_URL,musicId];
    
    [self _requestUrl:temp
           parameters:nil
               result:result];
}
@end
