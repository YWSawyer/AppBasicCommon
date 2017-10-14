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


//"APPSTORE":http://xqx.beidougx.com:8260
//"DEV_TEST":http://124.65.36.50:8263
//"INTERNAL_TEST": http://124.65.36.50:8263

#define HTTP_PATH_FOR_PRODUCTION                      APPSTORE


#define HOST_FOR_ONLINE_RELEASE                  @"xqx.beidougx.com"               //正式上线使用地址
#define IP_FOR_CHAT_ONLINE_RELEASE               @"211.95.11.163"                  //正式上线使用聊天地址
#define HOST_FOR_ONLINE_TEST                     @"124.65.36.50"                   //测试环境使用地址
#define HOST_FOR_LOCAL_TEST                      @"192.168.40.153"                 //本地测试局域网地址

#define HOST_SUBPATH                             @"bacy/APINavController/cmd.do"   //API访问子地址

#define PORT_FOR_ONLINE_RELEASE                  @"8260"                           //API正式线上使用端口号
//#define PORT_FOR_ONLINE_DEV_TEST                 @"8263"                           //API彭老师-测试线上使用端口号
#define PORT_FOR_ONLINE_INTERNAL_TEST            @"8231"                           //API曹老师-测试线上使用端口号
#define PORT_FOR_LOCAL_DEV_TEST                  @"8100"                           //API本地局域网使用端口号
#define PORT_FOR_CHAT                            @"8262"                           //语聊正式和测试统一端口号


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
