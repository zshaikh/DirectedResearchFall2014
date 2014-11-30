.class Lcom/facebook/widget/LoginButton$LoginButtonProperties;
.super Ljava/lang/Object;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoginButtonProperties"
.end annotation


# instance fields
.field private authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

.field private defaultAudience:Lcom/facebook/SessionDefaultAudience;

.field private loginBehavior:Lcom/facebook/SessionLoginBehavior;

.field private onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionStatusCallback:Lcom/facebook/Session$StatusCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    .line 83
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/SessionDefaultAudience;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/SessionLoginBehavior;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/internal/SessionAuthorizationType;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/Session$StatusCallback;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;

    return-object v0
.end method

.method private validatePermissions(Ljava/util/List;Lcom/facebook/internal/SessionAuthorizationType;Lcom/facebook/Session;)Z
    .locals 2
    .param p2, "authType"    # Lcom/facebook/internal/SessionAuthorizationType;
    .param p3, "currentSession"    # Lcom/facebook/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/internal/SessionAuthorizationType;",
            "Lcom/facebook/Session;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v0, p2}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Permissions for publish actions cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p3}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    # getter for: Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/widget/LoginButton;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot set additional permissions when session is already open."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearPermissions()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 143
    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    .line 144
    return-void
.end method

.method public getDefaultAudience()Lcom/facebook/SessionDefaultAudience;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/LoginButton$OnErrorListener;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;

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
    .line 138
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getSessionStatusCallback()Lcom/facebook/Session$StatusCallback;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method public setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)V
    .locals 0
    .param p1, "defaultAudience"    # Lcom/facebook/SessionDefaultAudience;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    .line 96
    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)V
    .locals 0
    .param p1, "loginBehavior"    # Lcom/facebook/SessionLoginBehavior;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 148
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/LoginButton$OnErrorListener;)V
    .locals 0
    .param p1, "onErrorListener"    # Lcom/facebook/widget/LoginButton$OnErrorListener;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;

    .line 88
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;Lcom/facebook/Session;)V
    .locals 2
    .param p2, "session"    # Lcom/facebook/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call setPublishPermissions after setReadPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->validatePermissions(Ljava/util/List;Lcom/facebook/internal/SessionAuthorizationType;Lcom/facebook/Session;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 118
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    .line 120
    :cond_1
    return-void
.end method

.method public setReadPermissions(Ljava/util/List;Lcom/facebook/Session;)V
    .locals 2
    .param p2, "session"    # Lcom/facebook/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call setReadPermissions after setPublishPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->validatePermissions(Ljava/util/List;Lcom/facebook/internal/SessionAuthorizationType;Lcom/facebook/Session;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 108
    sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;

    .line 110
    :cond_1
    return-void
.end method

.method public setSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    .line 156
    return-void
.end method
