.class public Lcom/redbox/android/adapter/RBCookieStore;
.super Ljava/lang/Object;
.source "RBCookieStore.java"

# interfaces
.implements Lorg/apache/http/client/CookieStore;


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private cookieList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/redbox/android/adapter/RBCookieStore;->cookieList:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcom/redbox/android/adapter/RBCookieStore;->applicationContext:Landroid/content/Context;

    .line 36
    iget-object v2, p0, Lcom/redbox/android/adapter/RBCookieStore;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbox/android/adapter/LocalDataStore;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/redbox/android/adapter/RBCookieStore;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbox/android/adapter/LocalDataStore;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "authToken":Ljava/lang/String;
    new-instance v1, Lcom/redbox/android/adapter/RBCookieStore$1;

    invoke-direct {v1, p0, v0}, Lcom/redbox/android/adapter/RBCookieStore$1;-><init>(Lcom/redbox/android/adapter/RBCookieStore;Ljava/lang/String;)V

    .line 111
    .local v1, "redboxCookie":Lorg/apache/http/cookie/Cookie;
    iget-object v2, p0, Lcom/redbox/android/adapter/RBCookieStore;->cookieList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v0    # "authToken":Ljava/lang/String;
    .end local v1    # "redboxCookie":Lorg/apache/http/cookie/Cookie;
    :cond_0
    return-void
.end method


# virtual methods
.method public addCookie(Lorg/apache/http/cookie/Cookie;)V
    .locals 2
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 116
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".Redbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/redbox/android/adapter/RBCookieStore;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/redbox/android/adapter/LocalDataStore;->getInstance(Landroid/content/Context;)Lcom/redbox/android/adapter/LocalDataStore;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/redbox/android/adapter/LocalDataStore;->setAuthToken(Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/adapter/RBCookieStore;->cookieList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public clearExpired(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public getCookies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/redbox/android/adapter/RBCookieStore;->cookieList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public logOff()V
    .locals 5

    .prologue
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v1, "redboxCookies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/cookie/Cookie;>;"
    iget-object v2, p0, Lcom/redbox/android/adapter/RBCookieStore;->cookieList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 32
    return-void

    .line 21
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 22
    .local v0, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".Redbox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found the redbox cookie :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    .end local v0    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 29
    .restart local v0    # "cookie":Lorg/apache/http/cookie/Cookie;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing the cookie :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v3, p0, Lcom/redbox/android/adapter/RBCookieStore;->cookieList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
