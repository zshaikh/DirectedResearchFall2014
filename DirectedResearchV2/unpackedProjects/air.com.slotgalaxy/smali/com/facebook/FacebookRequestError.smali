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

    .line 37
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
    .line 184
    .line 185
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

    .line 186
    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V
    .locals 5
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

    .line 112
    iput p1, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    .line 113
    iput p2, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    .line 114
    iput p3, p0, Lcom/facebook/FacebookRequestError;->subErrorCode:I

    .line 115
    iput-object p4, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    .line 116
    iput-object p5, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    .line 117
    iput-object p6, p0, Lcom/facebook/FacebookRequestError;->requestResultBody:Lorg/json/JSONObject;

    .line 118
    iput-object p7, p0, Lcom/facebook/FacebookRequestError;->requestResult:Lorg/json/JSONObject;

    .line 119
    iput-object p8, p0, Lcom/facebook/FacebookRequestError;->batchRequestResult:Ljava/lang/Object;

    .line 120
    iput-object p9, p0, Lcom/facebook/FacebookRequestError;->connection:Ljava/net/HttpURLConnection;

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "isLocalException":Z
    if-eqz p10, :cond_1

    .line 124
    iput-object p10, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    .line 125
    const/4 v1, 0x1

    .line 132
    :goto_0
    const/4 v0, 0x0

    .line 133
    .local v0, "errorCategory":Lcom/facebook/FacebookRequestError$Category;
    const/4 v2, 0x0

    .line 134
    .local v2, "messageId":I
    const/4 v3, 0x0

    .line 135
    .local v3, "shouldNotify":Z
    if-eqz v1, :cond_2

    .line 136
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->CLIENT:Lcom/facebook/FacebookRequestError$Category;

    .line 137
    const/4 v2, 0x0

    .line 176
    :cond_0
    :goto_1
    iput-object v0, p0, Lcom/facebook/FacebookRequestError;->category:Lcom/facebook/FacebookRequestError$Category;

    .line 177
    iput v2, p0, Lcom/facebook/FacebookRequestError;->userActionMessageId:I

    .line 178
    iput-boolean v3, p0, Lcom/facebook/FacebookRequestError;->shouldNotifyUser:Z

    .line 179
    return-void

    .line 127
    .end local v0    # "errorCategory":Lcom/facebook/FacebookRequestError$Category;
    .end local v2    # "messageId":I
    .end local v3    # "shouldNotify":Z
    :cond_1
    new-instance v4, Lcom/facebook/FacebookServiceException;

    invoke-direct {v4, p0, p5}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    goto :goto_0

    .line 139
    .restart local v0    # "errorCategory":Lcom/facebook/FacebookRequestError$Category;
    .restart local v2    # "messageId":I
    .restart local v3    # "shouldNotify":Z
    :cond_2
    const/4 v4, 0x1

    if-eq p2, v4, :cond_3

    const/4 v4, 0x2

    if-ne p2, v4, :cond_5

    .line 140
    :cond_3
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    .line 165
    :cond_4
    :goto_2
    if-nez v0, :cond_0

    .line 166
    sget-object v4, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {v4, p1}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 167
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->BAD_REQUEST:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_1

    .line 141
    :cond_5
    const/4 v4, 0x4

    if-eq p2, v4, :cond_6

    const/16 v4, 0x11

    if-ne p2, v4, :cond_7

    .line 142
    :cond_6
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->THROTTLING:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_2

    .line 143
    :cond_7
    const/16 v4, 0xa

    if-eq p2, v4, :cond_8

    sget-object v4, Lcom/facebook/FacebookRequestError;->EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {v4, p2}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 144
    :cond_8
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->PERMISSION:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_2

    .line 146
    :cond_9
    const/16 v4, 0x66

    if-eq p2, v4, :cond_a

    const/16 v4, 0xbe

    if-ne p2, v4, :cond_4

    .line 147
    :cond_a
    const/16 v4, 0x1cb

    if-eq p3, v4, :cond_b

    const/16 v4, 0x1d0

    if-ne p3, v4, :cond_c

    .line 148
    :cond_b
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_RETRY:Lcom/facebook/FacebookRequestError$Category;

    .line 150
    const/4 v3, 0x1

    goto :goto_2

    .line 152
    :cond_c
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/FacebookRequestError$Category;

    .line 154
    const/16 v4, 0x1ca

    if-eq p3, v4, :cond_4

    const/16 v4, 0x1cf

    if-eq p3, v4, :cond_4

    .line 156
    const/16 v4, 0x1cc

    if-eq p3, v4, :cond_4

    .line 160
    const/4 v3, 0x1

    goto :goto_2

    .line 168
    :cond_d
    sget-object v4, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {v4, p1}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 169
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_1

    .line 171
    :cond_e
    sget-object v0, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_1
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

    .line 197
    invoke-direct/range {v0 .. v10}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    .line 198
    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    .locals 11
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 189
    .line 191
    instance-of v0, p2, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_0

    .line 192
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
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    move-object v10, v0

    goto :goto_0
.end method

.method static checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;
    .locals 20
    .param p0, "singleResult"    # Lorg/json/JSONObject;
    .param p1, "batchResult"    # Ljava/lang/Object;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 352
    :try_start_0
    const-string v3, "code"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 353
    const-string v3, "code"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 354
    .local v4, "responseCode":I
    const-string v3, "body"

    .line 355
    const-string v5, "FACEBOOK_NON_JSON_RESULT"

    .line 354
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 357
    .local v3, "body":Ljava/lang/Object;
    if-eqz v3, :cond_3

    instance-of v5, v3, Lorg/json/JSONObject;

    if-eqz v5, :cond_3

    .line 358
    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v9, v0

    .line 361
    .local v9, "jsonBody":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 362
    .local v7, "errorType":Ljava/lang/String;
    const/4 v8, 0x0

    .line 363
    .local v8, "errorMessage":Ljava/lang/String;
    const/4 v5, -0x1

    .line 364
    .local v5, "errorCode":I
    const/4 v6, -0x1

    .line 366
    .local v6, "errorSubCode":I
    const/4 v3, 0x0

    .line 367
    .local v3, "hasError":Z
    const-string v10, "error"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 369
    const-string v3, "error"

    .end local v3    # "hasError":Z
    const/4 v5, 0x0

    invoke-static {v9, v3, v5}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .end local v5    # "errorCode":I
    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 371
    .local v3, "error":Lorg/json/JSONObject;
    const-string v5, "type"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v6    # "errorSubCode":I
    move-result-object v7

    .line 372
    const-string v5, "message"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 373
    const-string v5, "code"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 374
    .restart local v5    # "errorCode":I
    const-string v6, "error_subcode"

    const/4 v10, -0x1

    invoke-virtual {v3, v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 375
    .restart local v6    # "errorSubCode":I
    const/4 v3, 0x1

    .line 385
    .local v3, "hasError":Z
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    .line 386
    new-instance v3, Lcom/facebook/FacebookRequestError;

    .end local v3    # "hasError":Z
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-direct/range {v3 .. v12}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V

    move-object/from16 p0, v3

    .line 404
    .end local v4    # "responseCode":I
    .end local v5    # "errorCode":I
    .end local v6    # "errorSubCode":I
    .end local v7    # "errorType":Ljava/lang/String;
    .end local v8    # "errorMessage":Ljava/lang/String;
    .end local v9    # "jsonBody":Lorg/json/JSONObject;
    .end local p0    # "singleResult":Lorg/json/JSONObject;
    :goto_1
    return-object p0

    .line 376
    .restart local v3    # "hasError":Z
    .restart local v4    # "responseCode":I
    .restart local v5    # "errorCode":I
    .restart local v6    # "errorSubCode":I
    .restart local v7    # "errorType":Ljava/lang/String;
    .restart local v8    # "errorMessage":Ljava/lang/String;
    .restart local v9    # "jsonBody":Lorg/json/JSONObject;
    .restart local p0    # "singleResult":Lorg/json/JSONObject;
    :cond_1
    const-string v10, "error_code"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "error_msg"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 377
    const-string v10, "error_reason"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 378
    :cond_2
    const-string v3, "error_reason"

    .end local v3    # "hasError":Z
    const/4 v5, 0x0

    invoke-virtual {v9, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v5    # "errorCode":I
    move-result-object v7

    .line 379
    const-string v3, "error_msg"

    const/4 v5, 0x0

    invoke-virtual {v9, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 380
    const-string v3, "error_code"

    const/4 v5, -0x1

    invoke-virtual {v9, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 381
    .restart local v5    # "errorCode":I
    const-string v3, "error_subcode"

    const/4 v6, -0x1

    invoke-virtual {v9, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .end local v6    # "errorSubCode":I
    move-result v6

    .line 382
    .restart local v6    # "errorSubCode":I
    const/4 v3, 0x1

    .restart local v3    # "hasError":Z
    goto :goto_0

    .line 392
    .end local v3    # "hasError":Z
    .end local v5    # "errorCode":I
    .end local v6    # "errorSubCode":I
    .end local v7    # "errorType":Ljava/lang/String;
    .end local v8    # "errorMessage":Ljava/lang/String;
    .end local v9    # "jsonBody":Lorg/json/JSONObject;
    :cond_3
    sget-object v3, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {v3, v4}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 393
    new-instance v10, Lcom/facebook/FacebookRequestError;

    const/4 v12, -0x1

    .line 394
    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 395
    const-string v3, "body"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 397
    const-string v3, "body"

    const-string v5, "FACEBOOK_NON_JSON_RESULT"

    .line 396
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    move-object/from16 v16, v3

    :goto_2
    move v11, v4

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    .line 393
    invoke-direct/range {v10 .. v19}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p0, v10

    goto :goto_1

    .line 397
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v16, v3

    goto :goto_2

    .line 401
    .end local v4    # "responseCode":I
    :catch_0
    move-exception p0

    .line 404
    .end local p0    # "singleResult":Lorg/json/JSONObject;
    :cond_5
    const/16 p0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getBatchRequestResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->batchRequestResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getCategory()Lcom/facebook/FacebookRequestError$Category;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->category:Lcom/facebook/FacebookRequestError$Category;

    return-object v0
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    .line 279
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
    .line 267
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Lcom/facebook/FacebookException;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    return-object v0
.end method

.method public getRequestResult()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->requestResult:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRequestResultBody()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->requestResultBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRequestStatusCode()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    return v0
.end method

.method public getSubErrorCode()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/facebook/FacebookRequestError;->subErrorCode:I

    return v0
.end method

.method public getUserActionMessageId()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/facebook/FacebookRequestError;->userActionMessageId:I

    return v0
.end method

.method public shouldNotifyUser()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/facebook/FacebookRequestError;->shouldNotifyUser:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{HttpStatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    iget v1, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 339
    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 340
    iget v1, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 341
    const-string v1, ", errorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    const-string v1, ", errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 344
    invoke-virtual {p0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 345
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    return-object v0
.end method
