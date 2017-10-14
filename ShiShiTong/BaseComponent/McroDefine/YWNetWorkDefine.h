//
//  YWNetWorkDefine.h
//  ShiShiTong
//
//  Created by wei.yuan on 14/10/2017.
//  Copyright © 2017 dahuoshi. All rights reserved.
//

#ifndef YWNetWorkDefine_h
#define YWNetWorkDefine_h

#define DEV_TEST                 @"DEV_TEST"
#define APPSTORE                 @"APPSTORE"


//"APPSTORE":http://xxx.xxx.com:xxxx
//"DEV_TEST":http://xxx.xxx.com:xxxx
//"INTERNAL_TEST": http://xxx.xxx.com:xxxx

#define HTTP_PATH_FOR_PRODUCTION                      APPSTORE


#define HOST_FOR_ONLINE_RELEASE                  @"xxx.xxx.com"               //正式上线使用地址
#define IP_FOR_CHAT_ONLINE_RELEASE               @"xxx.xxx.com"                  //正式上线使用聊天地址
#define HOST_FOR_ONLINE_TEST                     @"xxx.xxx.com"                   //测试环境使用地址
#define HOST_FOR_LOCAL_TEST                      @"xxx.xxx.com"                 //本地测试局域网地址

#define HOST_SUBPATH                             @"xxx.xxx.com"   //API访问子地址

#define PORT_FOR_ONLINE_RELEASE                  @"xxxx"                           //API正式线上使用端口号
#define PORT_FOR_ONLINE_DEV_TEST                 @"xxxx"                           //API测试线上使用端口号
#define PORT_FOR_ONLINE_INTERNAL_TEST            @"xxxx"                           //API测试线2上使用端口号
#define PORT_FOR_LOCAL_DEV_TEST                  @"xxxx"                           //API本地局域网使用端口号
#define PORT_FOR_CHAT                            @"xxxx"                           //语聊正式和测试统一端口号


#define PATH(HOST,PORT)                          [NSString stringWithFormat:@"http://%@:%@",HOST,PORT]

//API正式上线使用地址
#define PATH_FOR_ONLINE_RELEASE                  PATH(HOST_FOR_ONLINE_RELEASE,PORT_FOR_ONLINE_RELEASE)
//API彭老师-测试线上使用端地址
#define PATH_FOR_ONLINE_DEV_TEST                 PATH(HOST_FOR_ONLINE_TEST,PORT_FOR_ONLINE_INTERNAL_TEST)
//API曹老师-测试线上使用端地址
#define PATH_FOR_ONLINE_INTERNAL_TEST            PATH(HOST_FOR_ONLINE_TEST,PORT_FOR_ONLINE_INTERNAL_TEST)
//API本地局域网使用端地址
#define PATH_FOR_LOCAL_DEV_TEST                  PATH(HOST_FOR_LOCAL_TEST,PORT_FOR_ONLINE_RELEASE)



#define API_HOST_APP           [YWCommonUtils domainName]
#define API_PATH               [YWCommonUtils apiPath]

#endif /* YWNetWorkDefine_h */
