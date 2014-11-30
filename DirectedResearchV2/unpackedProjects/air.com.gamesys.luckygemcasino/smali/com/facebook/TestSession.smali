.class public Lcom/facebook/TestSession;
.super Lcom/facebook/Session;
.source "TestSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/TestSession$FqlResponse;,
        Lcom/facebook/TestSession$FqlResult;,
        Lcom/facebook/TestSession$Mode;,
        Lcom/facebook/TestSession$TestAccount;,
        Lcom/facebook/TestSession$TestTokenCachingStrategy;,
        Lcom/facebook/TestSession$UserAccount;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG_TAG:Ljava/lang/String; = "FacebookSDK.TestSession"

.field private static appTestAccounts:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/TestSession$TestAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L

.field private static testApplicationId:Ljava/lang/String;

.field private static testApplicationSecret:Ljava/lang/String;


# instance fields
.field private final mode:Lcom/facebook/TestSession$Mode;

.field private final requestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionUniqueUserTag:Ljava/lang/String;

.field private testAccountId:Ljava/lang/String;

.field private wasAskedToExtendAccessToken:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/facebook/TestSession;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/TestSession;->$assertionsDisabled:Z

    .line 81
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TokenCachingStrategy;Ljava/lang/String;Lcom/facebook/TestSession$Mode;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "tokenCachingStrategy"    # Lcom/facebook/TokenCachingStrategy;
    .param p4, "sessionUniqueUserTag"    # Ljava/lang/String;
    .param p5, "mode"    # Lcom/facebook/TestSession$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/TokenCachingStrategy;",
            "Ljava/lang/String;",
            "Lcom/facebook/TestSession$Mode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;)V

    .line 94
    const-string v0, "permissions"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    const-string v1, "testApplicationId"

    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;

    const-string v1, "testApplicationSecret"

    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-object p4, p0, Lcom/facebook/TestSession;->sessionUniqueUserTag:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Lcom/facebook/TestSession;->mode:Lcom/facebook/TestSession$Mode;

    .line 102
    iput-object p2, p0, Lcom/facebook/TestSession;->requestedPermissions:Ljava/util/List;

    .line 103
    return-void
.end method

.method public static createSessionWithPrivateUser(Landroid/app/Activity;Ljava/util/List;)Lcom/facebook/TestSession;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/TestSession;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/TestSession$Mode;->PRIVATE:Lcom/facebook/TestSession$Mode;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/TestSession;->createTestSession(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TestSession$Mode;Ljava/lang/String;)Lcom/facebook/TestSession;

    move-result-object v0

    return-object v0
.end method

.method public static createSessionWithSharedUser(Landroid/app/Activity;Ljava/util/List;)Lcom/facebook/TestSession;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/TestSession;"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/TestSession;->createSessionWithSharedUser(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)Lcom/facebook/TestSession;

    move-result-object v0

    return-object v0
.end method

.method public static createSessionWithSharedUser(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)Lcom/facebook/TestSession;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "sessionUniqueUserTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/TestSession;"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/TestSession$Mode;->SHARED:Lcom/facebook/TestSession$Mode;

    invoke-static {p0, p1, v0, p2}, Lcom/facebook/TestSession;->createTestSession(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TestSession$Mode;Ljava/lang/String;)Lcom/facebook/TestSession;

    move-result-object v0

    return-object v0
.end method

.method private createTestAccountAndFinishAuth()Lcom/facebook/TestSession$TestAccount;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 392
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 393
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v7, "installed"

    const-string v8, "true"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v7, "permissions"

    invoke-direct {p0}, Lcom/facebook/TestSession;->getPermissionsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v7, "access_token"

    invoke-static {}, Lcom/facebook/TestSession;->getAppAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v7, p0, Lcom/facebook/TestSession;->mode:Lcom/facebook/TestSession$Mode;

    sget-object v8, Lcom/facebook/TestSession$Mode;->SHARED:Lcom/facebook/TestSession$Mode;

    if-ne v7, v8, :cond_0

    .line 401
    const-string v7, "name"

    const-string v8, "Shared %s Testuser"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/facebook/TestSession;->getSharedTestAccountIdentifier()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    const-string v7, "%s/accounts/test-users"

    new-array v8, v12, [Ljava/lang/Object;

    sget-object v9, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "graphPath":Ljava/lang/String;
    new-instance v0, Lcom/facebook/Request;

    sget-object v7, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct {v0, v6, v2, v3, v7}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 406
    .local v0, "createUserRequest":Lcom/facebook/Request;
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v4

    .line 408
    .local v4, "response":Lcom/facebook/Response;
    invoke-virtual {v4}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    .line 409
    .local v1, "error":Lcom/facebook/FacebookRequestError;
    const-class v7, Lcom/facebook/TestSession$TestAccount;

    invoke-virtual {v4, v7}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v5

    check-cast v5, Lcom/facebook/TestSession$TestAccount;

    .line 410
    .local v5, "testAccount":Lcom/facebook/TestSession$TestAccount;
    if-eqz v1, :cond_1

    .line 411
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/facebook/TestSession;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    move-object v5, v6

    .line 425
    .end local v5    # "testAccount":Lcom/facebook/TestSession$TestAccount;
    :goto_0
    return-object v5

    .line 414
    .restart local v5    # "testAccount":Lcom/facebook/TestSession$TestAccount;
    :cond_1
    sget-boolean v6, Lcom/facebook/TestSession;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-nez v5, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 417
    :cond_2
    iget-object v6, p0, Lcom/facebook/TestSession;->mode:Lcom/facebook/TestSession$Mode;

    sget-object v7, Lcom/facebook/TestSession$Mode;->SHARED:Lcom/facebook/TestSession$Mode;

    if-ne v6, v7, :cond_3

    .line 419
    const-string v6, "name"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/facebook/TestSession$TestAccount;->setName(Ljava/lang/String;)V

    .line 420
    invoke-static {v5}, Lcom/facebook/TestSession;->storeTestAccount(Lcom/facebook/TestSession$TestAccount;)V

    .line 423
    :cond_3
    invoke-direct {p0, v5}, Lcom/facebook/TestSession;->finishAuthWithTestAccount(Lcom/facebook/TestSession$TestAccount;)V

    goto :goto_0
.end method

.method private static declared-synchronized createTestSession(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TestSession$Mode;Ljava/lang/String;)Lcom/facebook/TestSession;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "mode"    # Lcom/facebook/TestSession$Mode;
    .param p3, "sessionUniqueUserTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/TestSession$Mode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/TestSession;"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v6, Lcom/facebook/TestSession;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must provide app ID and secret"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 216
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "publish_actions"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 220
    :cond_2
    new-instance v0, Lcom/facebook/TestSession;

    new-instance v3, Lcom/facebook/TestSession$TestTokenCachingStrategy;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/facebook/TestSession$TestTokenCachingStrategy;-><init>(Lcom/facebook/TestSession$TestTokenCachingStrategy;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/TestSession;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TokenCachingStrategy;Ljava/lang/String;Lcom/facebook/TestSession$Mode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-object v0
.end method

.method private deleteTestAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "testAccountId"    # Ljava/lang/String;
    .param p2, "appAccessToken"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 430
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 431
    .local v2, "parameters":Landroid/os/Bundle;
    const-string v5, "access_token"

    invoke-virtual {v2, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance v3, Lcom/facebook/Request;

    const/4 v5, 0x0

    sget-object v6, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    invoke-direct {v3, v5, p1, v2, v6}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 434
    .local v3, "request":Lcom/facebook/Request;
    invoke-virtual {v3}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v4

    .line 436
    .local v4, "response":Lcom/facebook/Response;
    invoke-virtual {v4}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 437
    .local v0, "error":Lcom/facebook/FacebookRequestError;
    invoke-virtual {v4}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v1

    .line 438
    .local v1, "graphObject":Lcom/facebook/model/GraphObject;
    if-eqz v0, :cond_1

    .line 439
    const-string v5, "FacebookSDK.TestSession"

    const-string v6, "Could not delete test account %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    const-string v5, "FACEBOOK_NON_JSON_RESULT"

    invoke-interface {v1, v5}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 441
    const-string v5, "FacebookSDK.TestSession"

    const-string v6, "Could not delete test account %s: unknown reason"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findOrCreateSharedTestAccount()V
    .locals 2

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/facebook/TestSession;->getSharedTestAccountIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/TestSession;->findTestAccountMatchingIdentifier(Ljava/lang/String;)Lcom/facebook/TestSession$TestAccount;

    move-result-object v0

    .line 376
    .local v0, "testAccount":Lcom/facebook/TestSession$TestAccount;
    if-eqz v0, :cond_0

    .line 377
    invoke-direct {p0, v0}, Lcom/facebook/TestSession;->finishAuthWithTestAccount(Lcom/facebook/TestSession$TestAccount;)V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/facebook/TestSession;->createTestAccountAndFinishAuth()Lcom/facebook/TestSession$TestAccount;

    goto :goto_0
.end method

.method private static declared-synchronized findTestAccountMatchingIdentifier(Ljava/lang/String;)Lcom/facebook/TestSession$TestAccount;
    .locals 4
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    .line 302
    const-class v2, Lcom/facebook/TestSession;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/facebook/TestSession;->retrieveTestAccountsForAppIfNeeded()V

    .line 304
    sget-object v1, Lcom/facebook/TestSession;->appTestAccounts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 309
    const/4 v0, 0x0

    :goto_0
    monitor-exit v2

    return-object v0

    .line 304
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/TestSession$TestAccount;

    .line 305
    .local v0, "testAccount":Lcom/facebook/TestSession$TestAccount;
    invoke-interface {v0}, Lcom/facebook/TestSession$TestAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 302
    .end local v0    # "testAccount":Lcom/facebook/TestSession$TestAccount;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private finishAuthWithTestAccount(Lcom/facebook/TestSession$TestAccount;)V
    .locals 4
    .param p1, "testAccount"    # Lcom/facebook/TestSession$TestAccount;

    .prologue
    .line 384
    invoke-interface {p1}, Lcom/facebook/TestSession$TestAccount;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/TestSession;->testAccountId:Ljava/lang/String;

    .line 386
    invoke-interface {p1}, Lcom/facebook/TestSession$TestAccount;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/TestSession;->requestedPermissions:Ljava/util/List;

    .line 387
    sget-object v3, Lcom/facebook/AccessTokenSource;->TEST_USER:Lcom/facebook/AccessTokenSource;

    .line 386
    invoke-static {v1, v2, v3}, Lcom/facebook/AccessToken;->createFromString(Ljava/lang/String;Ljava/util/List;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 388
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/TestSession;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    .line 389
    return-void
.end method

.method static final getAppAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPermissionsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 446
    const-string v0, ","

    iget-object v1, p0, Lcom/facebook/TestSession;->requestedPermissions:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSharedTestAccountIdentifier()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide v8, 0xffffffffL

    .line 451
    invoke-direct {p0}, Lcom/facebook/TestSession;->getPermissionsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    and-long v2, v6, v8

    .line 452
    .local v2, "permissionsHash":J
    iget-object v6, p0, Lcom/facebook/TestSession;->sessionUniqueUserTag:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/facebook/TestSession;->sessionUniqueUserTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    and-long v4, v6, v8

    .line 454
    .local v4, "sessionTagHash":J
    :goto_0
    xor-long v0, v2, v4

    .line 455
    .local v0, "combinedHash":J
    invoke-direct {p0, v0, v1}, Lcom/facebook/TestSession;->validNameStringFromInteger(J)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 452
    .end local v0    # "combinedHash":J
    .end local v4    # "sessionTagHash":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getTestApplicationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    const-class v0, Lcom/facebook/TestSession;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTestApplicationSecret()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    const-class v0, Lcom/facebook/TestSession;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized populateTestAccounts(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/TestSession$TestAccount;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/TestSession$UserAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "testAccounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/TestSession$TestAccount;>;"
    .local p1, "userAccounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/TestSession$UserAccount;>;"
    const-class v3, Lcom/facebook/TestSession;

    monitor-enter v3

    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 289
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 295
    monitor-exit v3

    return-void

    .line 285
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/TestSession$TestAccount;

    .line 286
    .local v0, "testAccount":Lcom/facebook/TestSession$TestAccount;
    invoke-static {v0}, Lcom/facebook/TestSession;->storeTestAccount(Lcom/facebook/TestSession$TestAccount;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 285
    .end local v0    # "testAccount":Lcom/facebook/TestSession$TestAccount;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 289
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/TestSession$UserAccount;

    .line 290
    .local v1, "userAccount":Lcom/facebook/TestSession$UserAccount;
    sget-object v4, Lcom/facebook/TestSession;->appTestAccounts:Ljava/util/Map;

    invoke-interface {v1}, Lcom/facebook/TestSession$UserAccount;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/TestSession$TestAccount;

    .line 291
    .restart local v0    # "testAccount":Lcom/facebook/TestSession$TestAccount;
    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v1}, Lcom/facebook/TestSession$UserAccount;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/facebook/TestSession$TestAccount;->setName(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static declared-synchronized retrieveTestAccountsForAppIfNeeded()V
    .locals 16

    .prologue
    .line 225
    const-class v12, Lcom/facebook/TestSession;

    monitor-enter v12

    :try_start_0
    sget-object v11, Lcom/facebook/TestSession;->appTestAccounts:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_0

    .line 277
    .local v1, "fqlResponse":Lcom/facebook/TestSession$FqlResponse;
    .local v2, "fqlResults":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/TestSession$FqlResult;>;"
    .local v3, "multiquery":Lorg/json/JSONObject;
    .local v4, "parameters":Landroid/os/Bundle;
    .local v5, "request":Lcom/facebook/Request;
    .local v6, "response":Lcom/facebook/Response;
    .local v7, "testAccountQuery":Ljava/lang/String;
    .local v8, "testAccounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/TestSession$TestAccount;>;"
    .local v9, "userAccounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/TestSession$UserAccount;>;"
    .local v10, "userQuery":Ljava/lang/String;
    :goto_0
    monitor-exit v12

    return-void

    .line 229
    .end local v1    # "fqlResponse":Lcom/facebook/TestSession$FqlResponse;
    .end local v2    # "fqlResults":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/TestSession$FqlResult;>;"
    .end local v3    # "multiquery":Lorg/json/JSONObject;
    .end local v4    # "parameters":Landroid/os/Bundle;
    .end local v5    # "request":Lcom/facebook/Request;
    .end local v6    # "response":Lcom/facebook/Response;
    .end local v7    # "testAccountQuery":Ljava/lang/String;
    .end local v8    # "testAccounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/TestSession$TestAccount;>;"
    .end local v9    # "userAccounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/TestSession$UserAccount;>;"
    .end local v10    # "userQuery":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    sput-object v11, Lcom/facebook/TestSession;->appTestAccounts:Ljava/util/Map;

    .line 235
    const-string v11, "SELECT id,access_token FROM test_account WHERE app_id = %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 236
    sget-object v15, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    aput-object v15, v13, v14

    .line 235
    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 238
    .restart local v7    # "testAccountQuery":Ljava/lang/String;
    const-string v10, "SELECT uid,name FROM user WHERE uid IN (SELECT id FROM #test_accounts)"

    .line 240
    .restart local v10    # "userQuery":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .restart local v4    # "parameters":Landroid/os/Bundle;
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 246
    .restart local v3    # "multiquery":Lorg/json/JSONObject;
    const-string v11, "test_accounts"

    invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v11, "users"

    invoke-virtual {v3, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    :try_start_3
    const-string v11, "q"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v11, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v11, "access_token"

    invoke-static {}, Lcom/facebook/TestSession;->getAppAccessToken()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v11, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v5, Lcom/facebook/Request;

    const/4 v11, 0x0

    const-string v13, "fql"

    const/4 v14, 0x0

    invoke-direct {v5, v11, v13, v4, v14}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 257
    .restart local v5    # "request":Lcom/facebook/Request;
    invoke-virtual {v5}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v6

    .line 259
    .restart local v6    # "response":Lcom/facebook/Response;
    invoke-virtual {v6}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 260
    invoke-virtual {v6}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v11

    invoke-virtual {v11}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v11

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    .end local v3    # "multiquery":Lorg/json/JSONObject;
    .end local v4    # "parameters":Landroid/os/Bundle;
    .end local v5    # "request":Lcom/facebook/Request;
    .end local v6    # "response":Lcom/facebook/Response;
    .end local v10    # "userQuery":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 248
    .restart local v4    # "parameters":Landroid/os/Bundle;
    .restart local v10    # "userQuery":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "exception":Lorg/json/JSONException;
    :try_start_4
    new-instance v11, Lcom/facebook/FacebookException;

    invoke-direct {v11, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 263
    .end local v0    # "exception":Lorg/json/JSONException;
    .restart local v3    # "multiquery":Lorg/json/JSONObject;
    .restart local v5    # "request":Lcom/facebook/Request;
    .restart local v6    # "response":Lcom/facebook/Response;
    :cond_1
    const-class v11, Lcom/facebook/TestSession$FqlResponse;

    invoke-virtual {v6, v11}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v1

    check-cast v1, Lcom/facebook/TestSession$FqlResponse;

    .line 265
    .restart local v1    # "fqlResponse":Lcom/facebook/TestSession$FqlResponse;
    invoke-interface {v1}, Lcom/facebook/TestSession$FqlResponse;->getData()Lcom/facebook/model/GraphObjectList;

    move-result-object v2

    .line 266
    .restart local v2    # "fqlResults":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/TestSession$FqlResult;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v11

    const/4 v13, 0x2

    if-eq v11, v13, :cond_3

    .line 267
    :cond_2
    new-instance v11, Lcom/facebook/FacebookException;

    const-string v13, "Unexpected number of results from FQL query"

    invoke-direct {v11, v13}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 271
    :cond_3
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/TestSession$FqlResult;

    invoke-interface {v11}, Lcom/facebook/TestSession$FqlResult;->getFqlResultSet()Lcom/facebook/model/GraphObjectList;

    move-result-object v11

    const-class v13, Lcom/facebook/TestSession$TestAccount;

    invoke-interface {v11, v13}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v8

    .line 272
    .restart local v8    # "testAccounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/TestSession$TestAccount;>;"
    const/4 v11, 0x1

    invoke-interface {v2, v11}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/TestSession$FqlResult;

    invoke-interface {v11}, Lcom/facebook/TestSession$FqlResult;->getFqlResultSet()Lcom/facebook/model/GraphObjectList;

    move-result-object v11

    const-class v13, Lcom/facebook/TestSession$UserAccount;

    invoke-interface {v11, v13}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v9

    .line 275
    .restart local v9    # "userAccounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/TestSession$UserAccount;>;"
    invoke-static {v8, v9}, Lcom/facebook/TestSession;->populateTestAccounts(Ljava/util/Collection;Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static declared-synchronized setTestApplicationId(Ljava/lang/String;)V
    .locals 3
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 173
    const-class v1, Lcom/facebook/TestSession;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v2, "Can\'t have more than one test application ID"

    invoke-direct {v0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 176
    :cond_0
    :try_start_1
    sput-object p0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized setTestApplicationSecret(Ljava/lang/String;)V
    .locals 3
    .param p0, "applicationSecret"    # Ljava/lang/String;

    .prologue
    .line 195
    const-class v1, Lcom/facebook/TestSession;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v2, "Can\'t have more than one test application secret"

    invoke-direct {v0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 198
    :cond_0
    :try_start_1
    sput-object p0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized storeTestAccount(Lcom/facebook/TestSession$TestAccount;)V
    .locals 3
    .param p0, "testAccount"    # Lcom/facebook/TestSession$TestAccount;

    .prologue
    .line 298
    const-class v1, Lcom/facebook/TestSession;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/TestSession;->appTestAccounts:Ljava/util/Map;

    invoke-interface {p0}, Lcom/facebook/TestSession$TestAccount;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit v1

    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private validNameStringFromInteger(J)Ljava/lang/String;
    .locals 8
    .param p1, "i"    # J

    .prologue
    .line 459
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Perm"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 466
    .local v1, "lastChar":C
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_0

    .line 474
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 466
    :cond_0
    aget-char v0, v5, v4

    .line 467
    .local v0, "c":C
    if-ne v0, v1, :cond_1

    .line 468
    add-int/lit8 v7, v0, 0xa

    int-to-char v0, v7

    .line 470
    :cond_1
    add-int/lit8 v7, v0, 0x61

    add-int/lit8 v7, v7, -0x30

    int-to-char v7, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    move v1, v0

    .line 466
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method authorize(Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/facebook/Session$AuthorizationRequest;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/facebook/TestSession;->mode:Lcom/facebook/TestSession$Mode;

    sget-object v1, Lcom/facebook/TestSession$Mode;->PRIVATE:Lcom/facebook/TestSession$Mode;

    if-ne v0, v1, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/facebook/TestSession;->createTestAccountAndFinishAuth()Lcom/facebook/TestSession$TestAccount;

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/facebook/TestSession;->findOrCreateSharedTestAccount()V

    goto :goto_0
.end method

.method extendAccessToken()V
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/TestSession;->wasAskedToExtendAccessToken:Z

    .line 363
    invoke-super {p0}, Lcom/facebook/Session;->extendAccessToken()V

    .line 364
    return-void
.end method

.method fakeTokenRefreshAttempt()V
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lcom/facebook/Session$TokenRefreshRequest;

    invoke-direct {v0, p0}, Lcom/facebook/Session$TokenRefreshRequest;-><init>(Lcom/facebook/Session;)V

    invoke-virtual {p0, v0}, Lcom/facebook/TestSession;->setCurrentTokenRefreshRequest(Lcom/facebook/Session$TokenRefreshRequest;)V

    .line 368
    return-void
.end method

.method forceExtendAccessToken(Z)V
    .locals 9
    .param p1, "forceExtendAccessToken"    # Z

    .prologue
    const-wide/16 v7, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/facebook/TestSession;->getTokenInfo()Lcom/facebook/AccessToken;

    move-result-object v6

    .line 348
    .local v6, "currentToken":Lcom/facebook/AccessToken;
    new-instance v0, Lcom/facebook/AccessToken;

    invoke-virtual {v6}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/List;

    move-result-object v3

    .line 349
    sget-object v4, Lcom/facebook/AccessTokenSource;->TEST_USER:Lcom/facebook/AccessTokenSource;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 348
    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    .line 347
    invoke-virtual {p0, v0}, Lcom/facebook/TestSession;->setTokenInfo(Lcom/facebook/AccessToken;)V

    .line 350
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/facebook/TestSession;->setLastAttemptedTokenExtendDate(Ljava/util/Date;)V

    .line 351
    return-void
.end method

.method public final getTestUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/TestSession;->testAccountId:Ljava/lang/String;

    return-object v0
.end method

.method getWasAskedToExtendAccessToken()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/facebook/TestSession;->wasAskedToExtendAccessToken:Z

    return v0
.end method

.method postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "oldState"    # Lcom/facebook/SessionState;
    .param p2, "newState"    # Lcom/facebook/SessionState;
    .param p3, "error"    # Ljava/lang/Exception;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/facebook/TestSession;->testAccountId:Ljava/lang/String;

    .line 334
    .local v0, "id":Ljava/lang/String;
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 336
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/TestSession;->mode:Lcom/facebook/TestSession$Mode;

    sget-object v2, Lcom/facebook/TestSession$Mode;->PRIVATE:Lcom/facebook/TestSession$Mode;

    if-ne v1, v2, :cond_0

    .line 337
    invoke-static {}, Lcom/facebook/TestSession;->getAppAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/TestSession;->deleteTestAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    return-void
.end method

.method shouldExtendAccessToken()Z
    .locals 2

    .prologue
    .line 355
    invoke-super {p0}, Lcom/facebook/Session;->shouldExtendAccessToken()Z

    move-result v0

    .line 356
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/TestSession;->wasAskedToExtendAccessToken:Z

    .line 357
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 314
    invoke-super {p0}, Lcom/facebook/Session;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "superString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{TestSession"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " testUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/TestSession;->testAccountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 317
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    return-object v1
.end method
