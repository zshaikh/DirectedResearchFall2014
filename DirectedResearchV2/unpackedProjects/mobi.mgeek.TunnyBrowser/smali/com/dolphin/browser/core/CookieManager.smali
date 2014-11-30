.class public final Lcom/dolphin/browser/core/CookieManager;
.super Ljava/lang/Object;
.source "CookieManager.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# static fields
.field private static a:Lcom/dolphin/browser/core/CookieManager;


# instance fields
.field private b:Lcom/dolphin/browser/core/ICookieManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->b()Lcom/dolphin/browser/core/ICookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/core/CookieManager;->b:Lcom/dolphin/browser/core/ICookieManager;

    .line 55
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/core/CookieManager;->setAcceptCookie(Z)V

    .line 56
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/dolphin/browser/core/CookieManager;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/dolphin/browser/core/CookieManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/core/CookieManager;->a:Lcom/dolphin/browser/core/CookieManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/dolphin/browser/core/CookieManager;

    invoke-direct {v0}, Lcom/dolphin/browser/core/CookieManager;-><init>()V

    sput-object v0, Lcom/dolphin/browser/core/CookieManager;->a:Lcom/dolphin/browser/core/CookieManager;

    .line 45
    :cond_0
    sget-object v0, Lcom/dolphin/browser/core/CookieManager;->a:Lcom/dolphin/browser/core/CookieManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSetCookieString(Lorg/apache/http/cookie/Cookie;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    if-eqz p0, :cond_3

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    const-string v2, ";expires="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    const-string v0, ";path="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    const-string v0, "/"

    .line 160
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v0, ";domain="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    const-string v0, ";Secure"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_3
    return-object v0

    .line 165
    :cond_4
    if-eqz p1, :cond_2

    .line 166
    const-string v0, ";httponly"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/dolphin/browser/core/CookieManager;->a:Lcom/dolphin/browser/core/CookieManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized acceptCookie()Z
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/CookieSyncManager;->getInstance()Lcom/dolphin/browser/core/CookieSyncManager;

    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/core/CookieManager;->b:Lcom/dolphin/browser/core/ICookieManager;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ICookieManager;->acceptCookie()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/dolphin/browser/core/CookieSyncManager;->getInstance()Lcom/dolphin/browser/core/CookieSyncManager;

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/core/CookieManager;->b:Lcom/dolphin/browser/core/ICookieManager;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ICookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAllCookie()V
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/dolphin/browser/core/CookieSyncManager;->getInstance()Lcom/dolphin/browser/core/CookieSyncManager;

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/core/CookieManager;->b:Lcom/dolphin/browser/core/ICookieManager;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ICookieManager;->removeAllCookie()V

    .line 119
    return-void
.end method

.method public removeExpiredCookie()V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/dolphin/browser/core/CookieSyncManager;->getInstance()Lcom/dolphin/browser/core/CookieSyncManager;

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/core/CookieManager;->b:Lcom/dolphin/browser/core/ICookieManager;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ICookieManager;->removeExpiredCookie()V

    .line 128
    return-void
.end method

.method public removeSessionCookie()V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/dolphin/browser/core/CookieSyncManager;->getInstance()Lcom/dolphin/browser/core/CookieSyncManager;

    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/core/CookieManager;->b:Lcom/dolphin/browser/core/ICookieManager;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ICookieManager;->removeSessionCookie()V

    .line 110
    return-void
.end method

.method public declared-synchronized setAcceptCookie(Z)V
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/CookieSyncManager;->getInstance()Lcom/dolphin/browser/core/CookieSyncManager;

    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/core/CookieManager;->b:Lcom/dolphin/browser/core/ICookieManager;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ICookieManager;->setAcceptCookie(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/dolphin/browser/core/CookieSyncManager;->getInstance()Lcom/dolphin/browser/core/CookieSyncManager;

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/core/CookieManager;->b:Lcom/dolphin/browser/core/ICookieManager;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/ICookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .prologue
    .line 131
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/dolphin/browser/core/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 132
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v0, p2, p3}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p4}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 138
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p5, p6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 139
    invoke-static {v0, p7}, Lcom/dolphin/browser/core/CookieManager;->getSetCookieString(Lorg/apache/http/cookie/Cookie;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/core/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method
