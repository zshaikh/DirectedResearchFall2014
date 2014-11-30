.class public Lcom/facebook/widget/LoginButton;
.super Lcom/facebook/ane/AneButton;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/LoginButton$LoginButtonCallback;,
        Lcom/facebook/widget/LoginButton$LoginButtonProperties;,
        Lcom/facebook/widget/LoginButton$LoginClickListener;,
        Lcom/facebook/widget/LoginButton$OnErrorListener;,
        Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private applicationId:Ljava/lang/String;

.field private confirmLogout:Z

.field private fetchUserInfo:Z

.field private loginLogoutEventName:Ljava/lang/String;

.field private loginText:Ljava/lang/String;

.field private logoutText:Ljava/lang/String;

.field private parentFragment:Landroid/support/v4/app/Fragment;

.field private properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

.field private sessionTracker:Lcom/facebook/internal/SessionTracker;

.field private user:Lcom/facebook/model/GraphUser;

.field private userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

.field private userInfoSession:Lcom/facebook/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1}, Lcom/facebook/ane/AneButton;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 67
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 74
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .line 75
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 197
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 199
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->finishInit()V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/facebook/ane/AneButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 67
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 74
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .line 75
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 210
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setGravity(I)V

    .line 215
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 216
    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    const-string v2, "color.com_facebook_loginview_text_color"

    invoke-virtual {v0, v2}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 215
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setTextColor(I)V

    .line 219
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 220
    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    const-string v2, "dimen.com_facebook_loginview_text_size"

    invoke-virtual {v0, v2}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 219
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 217
    invoke-virtual {p0, v3, v0}, Lcom/facebook/widget/LoginButton;->setTextSize(IF)V

    .line 221
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 222
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 226
    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    const-string v2, "color.com_facebook_blue"

    invoke-virtual {v0, v2}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 225
    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundColor(I)V

    .line 228
    const-string v0, "Log in with Facebook"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    .line 253
    :cond_0
    :goto_3
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 256
    :cond_1
    return-void

    .line 216
    :cond_2
    const v0, 0x7f060006

    goto :goto_0

    .line 220
    :cond_3
    const v0, 0x7f050009

    goto :goto_1

    .line 226
    :cond_4
    const v0, 0x7f060002

    goto :goto_2

    .line 230
    :cond_5
    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    const-string v1, "drawable.com_facebook_button_blue"

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    :goto_4
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundResource(I)V

    .line 232
    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    const-string v1, "drawable.com_facebook_inverse_icon"

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    :goto_5
    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/facebook/widget/LoginButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 234
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 235
    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    const-string v2, "dimen.com_facebook_loginview_compound_drawable_padding"

    invoke-virtual {v0, v2}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 234
    :goto_6
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setCompoundDrawablePadding(I)V

    .line 238
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 239
    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    const-string v2, "dimen.com_facebook_loginview_padding_left"

    invoke-virtual {v0, v2}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 238
    :goto_7
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 241
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 242
    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    const-string v3, "dimen.com_facebook_loginview_padding_top"

    invoke-virtual {v0, v3}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 241
    :goto_8
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 244
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 245
    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    const-string v4, "dimen.com_facebook_loginview_padding_right"

    invoke-virtual {v0, v4}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 244
    :goto_9
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 247
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 248
    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    const-string v5, "dimen.com_facebook_loginview_padding_bottom"

    invoke-virtual {v0, v5}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 247
    :goto_a
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 237
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/facebook/widget/LoginButton;->setPadding(IIII)V

    goto/16 :goto_3

    .line 231
    :cond_6
    const/high16 v0, 0x7f020000

    goto :goto_4

    .line 233
    :cond_7
    const v0, 0x7f02000b

    goto :goto_5

    .line 236
    :cond_8
    const v0, 0x7f050008

    goto :goto_6

    .line 240
    :cond_9
    const v0, 0x7f050004

    goto :goto_7

    .line 243
    :cond_a
    const v0, 0x7f050006

    goto :goto_8

    .line 246
    :cond_b
    const v0, 0x7f050005

    goto :goto_9

    .line 249
    :cond_c
    const v0, 0x7f050007

    goto :goto_a
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ane/AneButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 67
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 74
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .line 75
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 266
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 267
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    return-object v0
.end method

.method static synthetic access$10(Lcom/facebook/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    return-void
.end method

.method static synthetic access$11(Lcom/facebook/widget/LoginButton;Lcom/facebook/model/GraphUser;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    return-void
.end method

.method static synthetic access$12(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/widget/LoginButton;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->confirmLogout:Z

    return v0
.end method

.method static synthetic access$3()Lcom/adobe/fre/FREContext;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$7(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    return-object v0
.end method

.method static synthetic access$8(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/facebook/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    return-void
.end method

.method private fetchUserInfo()V
    .locals 4

    .prologue
    .line 591
    iget-boolean v2, p0, Lcom/facebook/widget/LoginButton;->fetchUserInfo:Z

    if-eqz v2, :cond_0

    .line 592
    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v2}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 593
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_1

    .line 594
    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    if-eq v0, v2, :cond_0

    .line 595
    new-instance v2, Lcom/facebook/widget/LoginButton$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/widget/LoginButton$1;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/Session;)V

    invoke-static {v0, v2}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v1

    .local v1, "request":Lcom/facebook/Request;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    const/4 v3, 0x0

    .line 610
    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 611
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 620
    .end local v0    # "currentSession":Lcom/facebook/Session;
    .end local v1    # "request":Lcom/facebook/Request;
    :cond_0
    :goto_0
    return-void

    .line 614
    .restart local v0    # "currentSession":Lcom/facebook/Session;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 615
    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    if-eqz v2, :cond_0

    .line 616
    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    iget-object v3, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    invoke-interface {v2, v3}, Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;->onUserInfoFetched(Lcom/facebook/model/GraphUser;)V

    goto :goto_0
.end method

.method private initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 573
    if-nez p1, :cond_1

    .line 587
    :cond_0
    :goto_0
    return v2

    .line 577
    :cond_1
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 578
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_2

    .line 579
    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    goto :goto_0

    .line 582
    :cond_2
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "applicationId":Ljava/lang/String;
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 587
    :cond_3
    invoke-static {p1}, Lcom/facebook/Session;->openActiveSessionFromCache(Landroid/content/Context;)Lcom/facebook/Session;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 549
    sget-object v1, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    const-string v3, "styleable.com_facebook_login_view"

    invoke-virtual {v1, v3}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/facebook/widget/LoginButton;->obtainStyledAttributes(Landroid/util/AttributeSet;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 550
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v1, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    const-string v3, "styleable.com_facebook_login_view_confirm_logout"

    invoke-virtual {v1, v3}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->confirmLogout:Z

    .line 552
    sget-object v1, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    const-string v3, "styleable.com_facebook_login_view_fetch_user_info"

    invoke-virtual {v1, v3}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->fetchUserInfo:Z

    .line 554
    sget-object v1, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    const-string v2, "styleable.com_facebook_login_view_login_text"

    invoke-virtual {v1, v2}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    .line 556
    sget-object v1, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/facebook/widget/LoginButton;->asContext:Lcom/adobe/fre/FREContext;

    const-string v2, "styleable.com_facebook_login_view_logout_text"

    invoke-virtual {v1, v2}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LoginButton;->logoutText:Ljava/lang/String;

    .line 558
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 559
    return-void

    .line 551
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 553
    goto :goto_1

    .line 555
    :cond_2
    const/4 v1, 0x2

    goto :goto_2

    .line 557
    :cond_3
    const/4 v1, 0x3

    goto :goto_3
.end method

.method private setButtonText()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    .line 570
    :cond_0
    return-void
.end method


# virtual methods
.method public clearPermissions()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->clearPermissions()V

    .line 388
    return-void
.end method

.method protected finishInit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 499
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    .line 500
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/facebook/internal/SessionTracker;

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/widget/LoginButton$LoginButtonCallback;

    invoke-direct {v2, p0, v4}, Lcom/facebook/widget/LoginButton$LoginButtonCallback;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$LoginButtonCallback;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    .line 502
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    .line 504
    :cond_0
    return-void
.end method

.method public getDefaultAudience()Lcom/facebook/SessionDefaultAudience;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getDefaultAudience()Lcom/facebook/SessionDefaultAudience;

    move-result-object v0

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v0

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/LoginButton$OnErrorListener;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getOnErrorListener()Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionStatusCallback()Lcom/facebook/Session$StatusCallback;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getSessionStatusCallback()Lcom/facebook/Session$StatusCallback;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoChangedCallback()Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    return-object v0
.end method

.method handleError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$5(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 724
    instance-of v0, p1, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$5(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    check-cast p1, Lcom/facebook/FacebookException;

    .end local p1    # "exception":Ljava/lang/Exception;
    invoke-interface {v0, p1}, Lcom/facebook/widget/LoginButton$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 727
    .restart local p1    # "exception":Ljava/lang/Exception;
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$5(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/facebook/widget/LoginButton$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 469
    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 470
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v1

    .line 473
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 518
    invoke-super {p0}, Lcom/facebook/ane/AneButton;->onAttachedToWindow()V

    .line 519
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->isTracking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->startTracking()V

    .line 521
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    .line 522
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    .line 524
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 528
    invoke-super {p0}, Lcom/facebook/ane/AneButton;->onDetachedFromWindow()V

    .line 529
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->stopTracking()V

    .line 532
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 494
    invoke-super {p0}, Lcom/facebook/ane/AneButton;->onFinishInflate()V

    .line 495
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->finishInit()V

    .line 496
    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 417
    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)V
    .locals 1
    .param p1, "defaultAudience"    # Lcom/facebook/SessionDefaultAudience;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)V

    .line 294
    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;

    .line 514
    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)V
    .locals 1
    .param p1, "loginBehavior"    # Lcom/facebook/SessionLoginBehavior;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)V

    .line 398
    return-void
.end method

.method setLoginLogoutEventName(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 545
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/LoginButton$OnErrorListener;)V
    .locals 1
    .param p1, "onErrorListener"    # Lcom/facebook/widget/LoginButton$OnErrorListener;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setOnErrorListener(Lcom/facebook/widget/LoginButton$OnErrorListener;)V

    .line 276
    return-void
.end method

.method setProperties(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)V
    .locals 0
    .param p1, "properties"    # Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .line 541
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setPublishPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 361
    return-void
.end method

.method public varargs setPublishPermissions([Ljava/lang/String;)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v2}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setPublishPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 381
    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setReadPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 322
    return-void
.end method

.method public varargs setReadPermissions([Ljava/lang/String;)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v2}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setReadPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 341
    return-void
.end method

.method public setSession(Lcom/facebook/Session;)V
    .locals 1
    .param p1, "newSession"    # Lcom/facebook/Session;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/SessionTracker;->setSession(Lcom/facebook/Session;)V

    .line 488
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    .line 489
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    .line 490
    return-void
.end method

.method public setSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 445
    return-void
.end method

.method public setUserInfoChangedCallback(Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;)V
    .locals 0
    .param p1, "userInfoChangedCallback"    # Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    .line 435
    return-void
.end method
