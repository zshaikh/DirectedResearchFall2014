.class public final Lcom/facebook/FacebookRequestError;
.super Ljava/lang/Object;
.source "FacebookRequestError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FacebookRequestError$Category;,
        Lcom/facebook/FacebookRequestError$Range;
    }
.end annotation


# static fields
.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final EC_APP_NOT_INSTALLED:I = 0x1ca

.field private static final EC_APP_TOO_MANY_CALLS:I = 0x4

.field private static final EC_EXPIRED:I = 0x1cf

.field private static final EC_INVALID_SESSION:I = 0x66

.field private static final EC_INVALID_TOKEN:I = 0xbe

.field private static final EC_PASSWORD_CHANGED:I = 0x1cc

.field private static final EC_PERMISSION_DENIED:I = 0xa

.field private static final EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range;

.field private static final EC_SERVICE_UNAVAILABLE:I = 0x2

.field private static final EC_UNCONFIRMED_USER:I = 0x1d0

.field private static final EC_UNKNOWN_ERROR:I = 0x1

.field private static final EC_USER_CHECKPOINTED:I = 0x1cb

.field private static final EC_USER_TOO_MANY_CALLS:I = 0x11

.field private static final ERROR_CODE_FIELD_KEY:Ljava/lang/String; = "code"

.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "error_code"

.field private static final ERROR_KEY:Ljava/lang/String; = "error"

.field private static final ERROR_MESSAGE_FIELD_KEY:Ljava/lang/String; = "message"

.field private static final ERROR_MSG_KEY:Ljava/lang/String; = "error_msg"

.field private static final ERROR_REASON_KEY:Ljava/lang/String; = "error_reason"

.field private static final ERROR_SUB_CODE_KEY:Ljava/lang/String; = "error_subcode"

.field private static final ERROR_TYPE_FIELD_KEY:Ljava/lang/String; = "type"

.field private static final HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range;

.field private static final HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range;

.field private static final HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;

.field public static final INVALID_ERROR_CODE:I = -0x1

.field public static final INVALID_HTTP_STATUS_CODE:I = -0x1

.field private static final INVALID_MESSAGE_ID:I

.field protected static asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;


# instance fields
.field private final batchRequestResult:Ljava/lang/Object;

.field private final category:Lcom/facebook/FacebookRequestError$Category;

.field private final connection:Ljava/net/HttpURLConnection;

.field private final errorCode:I

.field private final errorMessage:Ljava/lang/String;

.field private final errorType:Ljava/lang/String;

.field private final exception:Lcom/facebook/FacebookException;

.field private final requestResult:Lorg/json/JSONObject;

.field private final requestResultBody:Lorg/json/JSONObject;

.field private final requestStatusCode:I

.field private final shouldNotifyUser:Z

.field private final subErrorCode:I

.field private final userActionMessageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0x12b

    const/16 v1, 0xc8

    const/4 v3, 0x0

    .line 38
    invoke-static {}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->getContext()Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookRequestError;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    .line 83
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$Range;)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range;

    .line 90
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$Range;)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;

    .line 91
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    const/16 v1, 0x190

    const/16 v2, 0x1f3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$Range;)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range;

    .line 92
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    const/16 v1, 0x1f4

    const/16 v2, 0x257

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$Range;)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    .locals 11
    .param p1, "requestStatusCode"    # I
    .param p2, "errorCode"    # I
    .param p3, "subErrorCode"    # I
    .param p4, "errorType"    # Ljava/lang/String;
    .param p5, "errorMessage"    # Ljava/lang/String;
    .param p6, "requestResultBody"    # Lorg/json/JSONObject;
    .param p7, "requestResult"    # Lorg/json/JSONObject;
    .param p8, "batchRequestResult"    # Ljava/lang/Object;
    .param p9, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 187
    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    .line 188
    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V
    .locals 7
    .param p1, "requestStatusCode"    # I
    .param p2, "errorCode"    # I
    .param p3, "subErrorCode"    # I
    .param p4, "errorType"    # Ljava/lang/String;
    .param p5, "errorMessage"    # Ljava/lang/String;
    .param p6, "requestResultBody"    # Lorg/json/JSONObject;
    .param p7, "requestResult"    # Lorg/json/JSONObject;
    .param p8, "batchRequestResult"    # Ljava/lang/Object;
    .param p9, "connection"    # Ljava/net/HttpURLConnection;
    .param p10, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    .line 112
    iput p2, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    .line 113
    iput p3, p0, Lcom/facebook/FacebookRequestError;->subErrorCode:I

    .line 114
    iput-object p4, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    .line 115
    iput-object p5, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    .line 116
    iput-object p6, p0, Lcom/facebook/FacebookRequestError;->requestResultBody:Lorg/json/JSONObject;

    .line 117
    iput-object p7, p0, Lcom/facebook/FacebookRequestError;->requestResult:Lorg/json/JSONObject;

    .line 118
    iput-object p8, p0, Lcom/facebook/FacebookRequestError;->batchRequestResult:Ljava/lang/Object;

    .line 119
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/facebook/FacebookRequestError;->connection:Ljava/net/HttpURLConnection;

    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "isLocalException":Z
    if-eqz p10, :cond_1

    .line 123
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    .line 124
    const/4 v2, 0x1

    .line 131
    :goto_0
    const/4 v1, 0x0

    .line 132
    .local v1, "errorCategory":Lcom/facebook/FacebookRequestError$Category;
    const/4 v3, 0x0

    .line 133
    .local v3, "messageId":I
    const/4 v4, 0x0

    .line 134
    .local v4, "shouldNotify":Z
    if-eqz v2, :cond_2

    .line 135
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->CLIENT:Lcom/facebook/FacebookRequestError$Category;

    .line 136
    const/4 v3, 0x0

    .line 180
    :cond_0
    :goto_1
    iput-object v1, p0, Lcom/facebook/FacebookRequestError;->category:Lcom/facebook/FacebookRequestError$Category;

    .line 181
    iput v3, p0, Lcom/facebook/FacebookRequestError;->userActionMessageId:I

    .line 182
    iput-boolean v4, p0, Lcom/facebook/FacebookRequestError;->shouldNotifyUser:Z

    .line 183
    return-void

    .line 126
    .end local v1    # "errorCategory":Lcom/facebook/FacebookRequestError$Category;
    .end local v3    # "messageId":I
    .end local v4    # "shouldNotify":Z
    :cond_1
    new-instance v5, Lcom/facebook/FacebookServiceException;

    invoke-direct {v5, p0, p5}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    goto :goto_0

    .line 138
    .restart local v1    # "errorCategory":Lcom/facebook/FacebookRequestError$Category;
    .restart local v3    # "messageId":I
    .restart local v4    # "shouldNotify":Z
    :cond_2
    const/4 v5, 0x1

    if-eq p2, v5, :cond_3

    const/4 v5, 0x2

    if-ne p2, v5, :cond_5

    .line 139
    :cond_3
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    .line 169
    :cond_4
    :goto_2
    if-nez v1, :cond_0

    .line 170
    sget-object v5, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {v5, p1}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 171
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->BAD_REQUEST:Lcom/facebook/FacebookRequestError$Category;

    .line 172
    goto :goto_1

    .line 140
    :cond_5
    const/4 v5, 0x4

    if-eq p2, v5, :cond_6

    const/16 v5, 0x11

    if-ne p2, v5, :cond_7

    .line 141
    :cond_6
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->THROTTLING:Lcom/facebook/FacebookRequestError$Category;

    .line 142
    goto :goto_2

    :cond_7
    const/16 v5, 0xa

    if-eq p2, v5, :cond_8

    sget-object v5, Lcom/facebook/FacebookRequestError;->EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {v5, p2}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 143
    :cond_8
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->PERMISSION:Lcom/facebook/FacebookRequestError$Category;

    .line 144
    sget-object v5, Lcom/facebook/FacebookRequestError;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v5, :cond_9

    sget-object v5, Lcom/facebook/FacebookRequestError;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v6, "string.com_facebook_requesterror_permissions"

    invoke-virtual {v5, v6}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v3

    .line 146
    :goto_3
    goto :goto_2

    .line 145
    :cond_9
    const v3, 0x7f070018

    goto :goto_3

    .line 146
    :cond_a
    const/16 v5, 0x66

    if-eq p2, v5, :cond_b

    const/16 v5, 0xbe

    if-ne p2, v5, :cond_4

    .line 147
    :cond_b
    const/16 v5, 0x1cb

    if-eq p3, v5, :cond_c

    const/16 v5, 0x1d0

    if-ne p3, v5, :cond_e

    .line 148
    :cond_c
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_RETRY:Lcom/facebook/FacebookRequestError$Category;

    .line 149
    sget-object v5, Lcom/facebook/FacebookRequestError;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v5, :cond_d

    sget-object v5, Lcom/facebook/FacebookRequestError;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v6, "string.com_facebook_requesterror_web_login"

    invoke-virtual {v5, v6}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v3

    .line 151
    :goto_4
    const/4 v4, 0x1

    .line 152
    goto :goto_2

    .line 150
    :cond_d
    const v3, 0x7f070014

    goto :goto_4

    .line 153
    :cond_e
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/FacebookRequestError$Category;

    .line 155
    const/16 v5, 0x1ca

    if-eq p3, v5, :cond_f

    const/16 v5, 0x1cf

    if-ne p3, v5, :cond_11

    .line 156
    :cond_f
    sget-object v5, Lcom/facebook/FacebookRequestError;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v5, :cond_10

    sget-object v5, Lcom/facebook/FacebookRequestError;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v6, "string.com_facebook_requesterror_relogin"

    invoke-virtual {v5, v6}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v3

    .line 158
    :goto_5
    goto :goto_2

    .line 157
    :cond_10
    const v3, 0x7f070015

    goto :goto_5

    .line 158
    :cond_11
    const/16 v5, 0x1cc

    if-ne p3, v5, :cond_13

    .line 159
    sget-object v5, Lcom/facebook/FacebookRequestError;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v5, :cond_12

    sget-object v5, Lcom/facebook/FacebookRequestError;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v6, "string.com_facebook_requesterror_password_changed"

    invoke-virtual {v5, v6}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v3

    .line 161
    :goto_6
    goto/16 :goto_2

    .line 160
    :cond_12
    const v3, 0x7f070016

    goto :goto_6

    .line 162
    :cond_13
    sget-object v5, Lcom/facebook/FacebookRequestError;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v5, :cond_14

    sget-object v5, Lcom/facebook/FacebookRequestError;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v6, "string.com_facebook_requesterror_reconnect"

    invoke-virtual {v5, v6}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v3

    .line 164
    :goto_7
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 163
    :cond_14
    const v3, 0x7f070017

    goto :goto_7

    .line 172
    :cond_15
    sget-object v5, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {v5, p1}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 173
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    .line 174
    goto/16 :goto_1

    .line 175
    :cond_16
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    goto/16 :goto_1
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "errorCode"    # I
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 196
    move-object v0, p0

    move v2, p1

    move v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    move-object v10, v6

    invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    .line 197
    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    .locals 11
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 191
    .line 192
    instance-of v0, p2, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/facebook/FacebookException;

    .end local p2    # "exception":Ljava/lang/Exception;
    move-object v10, p2

    :goto_0
    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, p1

    invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    .line 193
    return-void

    .line 192
    .restart local p2    # "exception":Ljava/lang/Exception;
    :cond_0
    new-instance v10, Lcom/facebook/FacebookException;

    invoke-direct {v10, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;
    .locals 21
    .param p0, "singleResult"    # Lorg/json/JSONObject;
    .param p1, "batchResult"    # Ljava/lang/Object;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 335
    :try_start_0
    const-string v1, "code"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 336
    const-string v1, "code"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 337
    .local v2, "responseCode":I
    const-string v1, "body"

    const-string v8, "FACEBOOK_NON_JSON_RESULT"

    move-object/from16 v0, p0

    invoke-static {v0, v1, v8}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 339
    .local v18, "body":Ljava/lang/Object;
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 340
    move-object/from16 v0, v18

    check-cast v0, Lorg/json/JSONObject;

    move-object v7, v0

    .line 343
    .local v7, "jsonBody":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 344
    .local v5, "errorType":Ljava/lang/String;
    const/4 v6, 0x0

    .line 345
    .local v6, "errorMessage":Ljava/lang/String;
    const/4 v3, -0x1

    .line 346
    .local v3, "errorCode":I
    const/4 v4, -0x1

    .line 348
    .local v4, "errorSubCode":I
    const/16 v20, 0x0

    .line 349
    .local v20, "hasError":Z
    const-string v1, "error"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    const-string v1, "error"

    const/4 v8, 0x0

    invoke-static {v7, v1, v8}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONObject;

    .line 353
    .local v19, "error":Lorg/json/JSONObject;
    const-string v1, "type"

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 354
    const-string v1, "message"

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 355
    const-string v1, "code"

    const/4 v8, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 356
    const-string v1, "error_subcode"

    const/4 v8, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 357
    const/16 v20, 0x1

    .line 366
    .end local v19    # "error":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-eqz v20, :cond_3

    .line 367
    new-instance v1, Lcom/facebook/FacebookRequestError;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V

    .line 382
    .end local v2    # "responseCode":I
    .end local v3    # "errorCode":I
    .end local v4    # "errorSubCode":I
    .end local v5    # "errorType":Ljava/lang/String;
    .end local v6    # "errorMessage":Ljava/lang/String;
    .end local v7    # "jsonBody":Lorg/json/JSONObject;
    .end local v18    # "body":Ljava/lang/Object;
    .end local v20    # "hasError":Z
    :goto_1
    return-object v1

    .line 358
    .restart local v2    # "responseCode":I
    .restart local v3    # "errorCode":I
    .restart local v4    # "errorSubCode":I
    .restart local v5    # "errorType":Ljava/lang/String;
    .restart local v6    # "errorMessage":Ljava/lang/String;
    .restart local v7    # "jsonBody":Lorg/json/JSONObject;
    .restart local v18    # "body":Ljava/lang/Object;
    .restart local v20    # "hasError":Z
    :cond_1
    const-string v1, "error_code"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "error_msg"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "error_reason"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    :cond_2
    const-string v1, "error_reason"

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 360
    const-string v1, "error_msg"

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 361
    const-string v1, "error_code"

    const/4 v8, -0x1

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 362
    const-string v1, "error_subcode"

    const/4 v8, -0x1

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 363
    const/16 v20, 0x1

    goto :goto_0

    .line 373
    .end local v3    # "errorCode":I
    .end local v4    # "errorSubCode":I
    .end local v5    # "errorType":Ljava/lang/String;
    .end local v6    # "errorMessage":Ljava/lang/String;
    .end local v7    # "jsonBody":Lorg/json/JSONObject;
    .end local v20    # "hasError":Z
    :cond_3
    sget-object v1, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {v1, v2}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 374
    new-instance v8, Lcom/facebook/FacebookRequestError;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 375
    const-string v1, "body"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "body"

    .line 376
    const-string v9, "FACEBOOK_NON_JSON_RESULT"

    .line 375
    move-object/from16 v0, p0

    invoke-static {v0, v1, v9}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    move-object v14, v1

    :goto_2
    move v9, v2

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    .line 374
    invoke-direct/range {v8 .. v17}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v8

    goto :goto_1

    .line 376
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 379
    .end local v2    # "responseCode":I
    .end local v18    # "body":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 382
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getBatchRequestResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->batchRequestResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getCategory()Lcom/facebook/FacebookRequestError$Category;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->category:Lcom/facebook/FacebookRequestError$Category;

    return-object v0
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    .line 274
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    invoke-virtual {v0}, Lcom/facebook/FacebookException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Lcom/facebook/FacebookException;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    return-object v0
.end method

.method public getRequestResult()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->requestResult:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRequestResultBody()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->requestResultBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRequestStatusCode()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    return v0
.end method

.method public getSubErrorCode()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/facebook/FacebookRequestError;->subErrorCode:I

    return v0
.end method

.method public getUserActionMessageId()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/facebook/FacebookRequestError;->userActionMessageId:I

    return v0
.end method

.method public shouldNotifyUser()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/facebook/FacebookRequestError;->shouldNotifyUser:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{HttpStatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 330
    const-string v1, ", errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    return-object v0
.end method
