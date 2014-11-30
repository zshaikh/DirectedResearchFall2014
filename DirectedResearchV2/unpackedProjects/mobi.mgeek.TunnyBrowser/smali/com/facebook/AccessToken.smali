.class public final Lcom/facebook/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final ACCESS_TOKEN_KEY:Ljava/lang/String; = "access_token"

.field private static final ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

.field private static final DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/facebook/AccessTokenSource;

.field private static final DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

.field private static final DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

.field static final EXPIRES_IN_KEY:Ljava/lang/String; = "expires_in"

.field private static final MAX_DATE:Ljava/util/Date;

.field private static final MIN_DATE:Ljava/util/Date;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final expires:Ljava/util/Date;

.field private final lastRefresh:Ljava/util/Date;

.field private final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Lcom/facebook/AccessTokenSource;

.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-class v0, Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/AccessToken;->$assertionsDisabled:Z

    .line 50
    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/facebook/AccessToken;->MIN_DATE:Ljava/util/Date;

    .line 51
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/facebook/AccessToken;->MAX_DATE:Ljava/util/Date;

    .line 52
    sget-object v0, Lcom/facebook/AccessToken;->MAX_DATE:Ljava/util/Date;

    sput-object v0, Lcom/facebook/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

    .line 53
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    .line 54
    sget-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    sput-object v0, Lcom/facebook/AccessToken;->DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/facebook/AccessTokenSource;

    .line 55
    sget-object v0, Lcom/facebook/AccessToken;->MIN_DATE:Ljava/util/Date;

    sput-object v0, Lcom/facebook/AccessToken;->ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p3, :cond_0

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 68
    :cond_0
    iput-object p2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    .line 69
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    .line 70
    iput-object p1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    .line 72
    iput-object p5, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    .line 73
    return-void
.end method

.method private appendPermissions(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 299
    const-string v0, " permissions:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 301
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :goto_0
    return-void

    .line 303
    :cond_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v0, ", "

    iget-object v1, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static createEmptyToken(Ljava/util/List;)Lcom/facebook/AccessToken;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lcom/facebook/AccessToken;

    const-string v1, ""

    sget-object v2, Lcom/facebook/AccessToken;->ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

    sget-object v4, Lcom/facebook/AccessTokenSource;->NONE:Lcom/facebook/AccessTokenSource;

    sget-object v5, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0
.end method

.method private static createFromBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)Lcom/facebook/AccessToken;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/util/Date;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 278
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    const-string v0, "expires_in"

    invoke-static {p1, v0, p3}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 281
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v2, :cond_1

    .line 282
    :cond_0
    const/4 v0, 0x0

    .line 285
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/facebook/AccessToken;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    goto :goto_0
.end method

.method static createFromCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .locals 6

    .prologue
    .line 246
    const-string v0, "com.facebook.TokenCachingStrategy.Permissions"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 248
    if-nez v0, :cond_0

    .line 249
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 254
    :goto_0
    new-instance v0, Lcom/facebook/AccessToken;

    const-string v1, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {p0, v2}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-static {p0}, Lcom/facebook/TokenCachingStrategy;->getSource(Landroid/os/Bundle;)Lcom/facebook/AccessTokenSource;

    move-result-object v4

    const-string v5, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    invoke-static {p0, v5}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0

    .line 251
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method

.method public static createFromExistingAccessToken(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 143
    if-nez p1, :cond_2

    .line 144
    sget-object v2, Lcom/facebook/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

    .line 146
    :goto_0
    if-nez p2, :cond_1

    .line 147
    sget-object v5, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    .line 149
    :goto_1
    if-nez p3, :cond_0

    .line 150
    sget-object v4, Lcom/facebook/AccessToken;->DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/facebook/AccessTokenSource;

    .line 153
    :goto_2
    new-instance v0, Lcom/facebook/AccessToken;

    move-object v1, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0

    :cond_0
    move-object v4, p3

    goto :goto_2

    :cond_1
    move-object v5, p2

    goto :goto_1

    :cond_2
    move-object v2, p1

    goto :goto_0
.end method

.method public static createFromNativeLinkingIntent(Landroid/content/Intent;)Lcom/facebook/AccessToken;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 165
    const-string v1, "intent"

    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/AccessToken;->createFromBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)Lcom/facebook/AccessToken;

    move-result-object v0

    goto :goto_0
.end method

.method static createFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .locals 4

    .prologue
    .line 196
    const-string v0, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0, v1}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 198
    const-string v1, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 199
    const-string v2, "com.facebook.platform.extra.ACCESS_TOKEN"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v1, v2, v0, p1}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method static createFromRefresh(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FieldGetter"
        }
    .end annotation

    .prologue
    .line 221
    sget-boolean v0, Lcom/facebook/AccessToken;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 225
    :cond_0
    const-string v0, "expires_in"

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1, v0, v1}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 226
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    invoke-static {v2, v1, v0, v3}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method static createFromString(Ljava/lang/String;Ljava/util/List;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/AccessTokenSource;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lcom/facebook/AccessToken;

    sget-object v2, Lcom/facebook/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

    sget-object v5, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0
.end method

.method static createFromTokenWithRefreshedPermissions(Lcom/facebook/AccessToken;Ljava/util/List;)Lcom/facebook/AccessToken;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lcom/facebook/AccessToken;

    iget-object v1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    iget-object v4, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    iget-object v5, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    return-object v0
.end method

.method static createFromWebBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/facebook/AccessTokenSource;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 205
    const-string v0, "expires_in"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 206
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    const-string v2, "granted_scopes"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    new-instance p0, Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 214
    :cond_0
    invoke-static {p0, v1, v0, p2}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method private static createNew(Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/facebook/AccessTokenSource;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 238
    :cond_0
    invoke-static {p0}, Lcom/facebook/AccessToken;->createEmptyToken(Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/facebook/AccessToken;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    goto :goto_0
.end method

.method private static getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 342
    if-nez p0, :cond_0

    move-object v0, v1

    .line 364
    :goto_0
    return-object v0

    .line 348
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 349
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 350
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v1, v0

    .line 361
    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_3

    .line 362
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 351
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 353
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v1, v0

    .line 356
    goto :goto_1

    .line 354
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 355
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 358
    goto :goto_0

    .line 364
    :cond_3
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 337
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Cannot readObject, serialization proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tokenToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 290
    const-string v0, "null"

    .line 294
    :goto_0
    return-object v0

    .line 291
    :cond_0
    sget-object v0, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    goto :goto_0

    .line 294
    :cond_1
    const-string v0, "ACCESS_TOKEN_REMOVED"

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 332
    new-instance v0, Lcom/facebook/AccessToken$SerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    iget-object v3, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    iget-object v4, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    iget-object v5, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/AccessToken$SerializationProxyV1;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Lcom/facebook/AccessToken$1;)V

    return-object v0
.end method


# virtual methods
.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getLastRefresh()Ljava/util/Date;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
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
    .line 102
    iget-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getSource()Lcom/facebook/AccessTokenSource;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method isInvalid()Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toCacheBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 262
    const-string v1, "com.facebook.TokenCachingStrategy.Token"

    iget-object v2, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "com.facebook.TokenCachingStrategy.ExpirationDate"

    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    invoke-static {v0, v1, v2}, Lcom/facebook/TokenCachingStrategy;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    .line 264
    const-string v1, "com.facebook.TokenCachingStrategy.Permissions"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 265
    const-string v1, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    iget-object v2, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 266
    const-string v1, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    iget-object v2, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    invoke-static {v0, v1, v2}, Lcom/facebook/TokenCachingStrategy;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    .line 268
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    const-string v1, "{AccessToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/AccessToken;->tokenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {p0, v0}, Lcom/facebook/AccessToken;->appendPermissions(Ljava/lang/StringBuilder;)V

    .line 181
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
