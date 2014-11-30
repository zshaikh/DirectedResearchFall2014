.class public Lcom/gamesys/android/social/facebook/ane/FacebookExtension;
.super Lcom/gamesys/android/common/tools/fwk/AbstractExtension;
.source "FacebookExtension.java"


# static fields
.field public static final CODE_DIALOG_FEED_REQUEST_ERROR_GENERIC:Ljava/lang/String; = "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_GENERIC"

.field public static final CODE_DIALOG_FEED_REQUEST_ERROR_USER_CANCEL_BTN:Ljava/lang/String; = "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_USER_CANCEL_BTN"

.field public static final CODE_DIALOG_FEED_REQUEST_ERROR_USER_CANCEL_X:Ljava/lang/String; = "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_USER_CANCEL_X"

.field public static final CODE_DIALOG_FEED_REQUEST_ERROR_WRONG_ARG_COUNT:Ljava/lang/String; = "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_ERROR_WRONG_ARG_COUNT"

.field public static final CODE_DIALOG_FEED_REQUEST_SUCCESS_PROGRESS:Ljava/lang/String; = "com.gamesys.android.ane.fb.CODE_DIALOG_FEED_REQUEST_SUCCESS_PROGRESS"

.field public static final CODE_ERROR_UNEXPECTED:Ljava/lang/String; = "com.gamesys.android.ane.fb.CODE_ERROR_UNEXPECTED"

.field public static final CODE_ERROR_USER_CANCEL:Ljava/lang/String; = "com.gamesys.android.ane.fb.CODE_ERROR_USER_CANCEL"

.field public static final CODE_INCOMING_NOTIFICATION_ERROR_NO_DETAIL:Ljava/lang/String; = "com.gamesys.android.ane.fb.CODE_INCOMING_NOTIFICATION_ERROR_NO_DETAIL"

.field public static final CODE_INCOMING_NOTIFICATION_ERROR_PROCESS_DETAIL:Ljava/lang/String; = "com.gamesys.android.ane.fb.CODE_INCOMING_NOTIFICATION_ERROR_PROCESS_DETAIL"

.field public static final CODE_INCOMING_NOTIFICATION_PROGRESS:Ljava/lang/String; = "com.gamesys.android.ane.fb.CODE_INCOMING_NOTIFICATION_PROGRESS"

.field public static final CODE_SESSION_APPLICATION_ID_NULL:Ljava/lang/String; = "com.gamesys.android.ane.fb.CODE_SESSION_APPLICATION_ID_NULL"

.field public static final CODE_SESSION_CLOSED:Ljava/lang/String; = "com.gamesys.android.ane.fb.SESSION_CLOSED"

.field public static final CODE_SESSION_CLOSED_LOGIN_FAILED:Ljava/lang/String; = "com.gamesys.android.ane.fb.SESSION_CLOSED_LOGIN_FAILED"

.field public static final CODE_SESSION_CREATED:Ljava/lang/String; = "com.gamesys.android.ane.fb.SESSION_CREATED"

.field public static final CODE_SESSION_CREATED_TOKEN_LOADED:Ljava/lang/String; = "com.gamesys.android.ane.fb.SESSION_CREATED_TOKEN_LOADED"

.field public static final CODE_SESSION_OPENED:Ljava/lang/String; = "com.gamesys.android.ane.fb.SESSION_OPENED"

.field public static final CODE_SESSION_OPENED_TOKEN_UPDATED:Ljava/lang/String; = "com.gamesys.android.ane.fb.SESSION_OPENED_TOKEN_UPDATED"

.field public static final CODE_SESSION_OPENING:Ljava/lang/String; = "com.gamesys.android.ane.fb.SESSION_OPENING"

.field public static final LEVEL_CLOSED:Ljava/lang/String; = "com.gamesys.android.ane.fb.LEVEL_CLOSED"

.field public static final LEVEL_CREATED:Ljava/lang/String; = "com.gamesys.android.ane.fb.LEVEL_CREATED"

.field public static final LEVEL_DIALOG_FEED_ERROR:Ljava/lang/String; = "com.gamesys.android.ane.fb.LEVEL_DIALOG_FEED_ERROR"

.field public static final LEVEL_DIALOG_FEED_SUCCESS:Ljava/lang/String; = "com.gamesys.android.ane.fb.LEVEL_DIALOG_FEED_SUCCESS"

.field public static final LEVEL_DIALOG_REQUEST_ERROR:Ljava/lang/String; = "com.gamesys.android.ane.fb.LEVEL_DIALOG_REQUEST_ERROR"

.field public static final LEVEL_DIALOG_REQUEST_SUCCESS:Ljava/lang/String; = "com.gamesys.android.ane.fb.LEVEL_DIALOG_REQUEST_SUCCESS"

.field public static final LEVEL_ERROR:Ljava/lang/String; = "com.gamesys.android.ane.fb.LEVEL_ERROR"

.field public static final LEVEL_ERROR_AUTHORIZATION:Ljava/lang/String; = "com.gamesys.android.ane.fb.LEVEL_ERROR_AUTHORIZATION"

.field public static final LEVEL_INCOMING_NOTIFICATION:Ljava/lang/String; = "com.gamesys.android.ane.fb.LEVEL_INCOMING_NOTIFICATION"

.field public static final LEVEL_INCOMING_NOTIFICATION_DETAIL:Ljava/lang/String; = "com.gamesys.android.ane.fb.LEVEL_INCOMING_NOTIFICATION_DETAIL"

.field public static final LEVEL_KEY_ACCES_TOKEN:Ljava/lang/String; = "com.gamesys.android.ane.fb.LEVEL_KEY_ACCESS_TOKEN"

.field public static final LEVEL_OPENED:Ljava/lang/String; = "com.gamesys.android.ane.fb.LEVEL_OPENED"

.field private static final TAG:Ljava/lang/String;

.field private static context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

.field private static mDebugEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->TAG:Ljava/lang/String;

    .line 123
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->mDebugEnabled:Z

    .line 126
    const/4 v0, 0x0

    sput-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;-><init>()V

    return-void
.end method

.method public static enableDebug(Z)V
    .locals 0
    .param p0, "isEnabled"    # Z

    .prologue
    .line 181
    sput-boolean p0, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->mDebugEnabled:Z

    .line 182
    return-void
.end method

.method public static final getContext()Lcom/gamesys/android/social/facebook/ane/FacebookContext;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    return-object v0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .prologue
    .line 188
    sget-boolean v0, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->mDebugEnabled:Z

    return v0
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-boolean v0, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 171
    sget-boolean v0, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 140
    sget-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    invoke-direct {v0, p1}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    .line 143
    :cond_0
    sget-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->context:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->TAG:Ljava/lang/String;

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->TAG:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method
