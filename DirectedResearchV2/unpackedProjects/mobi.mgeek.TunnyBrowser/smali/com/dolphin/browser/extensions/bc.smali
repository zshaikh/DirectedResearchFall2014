.class Lcom/dolphin/browser/extensions/bc;
.super Lcom/dolphin/browser/util/f;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/al;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/extensions/al;)V
    .locals 0

    .prologue
    .line 2016
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bc;->a:Lcom/dolphin/browser/extensions/al;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/extensions/al;Lcom/dolphin/browser/extensions/am;)V
    .locals 0

    .prologue
    .line 2016
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/bc;-><init>(Lcom/dolphin/browser/extensions/al;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2016
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/extensions/bc;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2020
    const-string v0, "Update add-on blacklist..."

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 2021
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bc;->a:Lcom/dolphin/browser/extensions/al;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/al;->f(Lcom/dolphin/browser/extensions/al;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "blm"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2026
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getBrowserSettings()Lcom/dolphin/browser/core/IBrowserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IBrowserSettings;->getAddonBlackListServerUrl()Ljava/lang/String;

    move-result-object v3

    .line 2030
    if-eqz v1, :cond_1

    .line 2031
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/Header;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "If-Modified-Since"

    invoke-direct {v5, v6, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v4

    .line 2034
    :goto_0
    new-instance v1, Lcom/dolphin/browser/Network/h;

    invoke-direct {v1, v3}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    const-string v3, "Addon"

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/Network/h;->a([Lorg/apache/http/Header;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 2039
    invoke-virtual {v0}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2041
    :try_start_1
    iget-object v0, v1, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    .line 2042
    iget-object v0, v1, Lcom/dolphin/browser/Network/n;->a:Lorg/apache/http/HttpResponse;

    const-string v3, "Last-Modified"

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2043
    iget-object v3, v1, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v3}, Lcom/dolphin/browser/Network/l;->d(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 2044
    iget-object v4, p0, Lcom/dolphin/browser/extensions/bc;->a:Lcom/dolphin/browser/extensions/al;

    invoke-static {v4, v3}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/al;Ljava/lang/String;)V

    .line 2045
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v4

    iget-object v5, p0, Lcom/dolphin/browser/extensions/bc;->a:Lcom/dolphin/browser/extensions/al;

    invoke-static {v5}, Lcom/dolphin/browser/extensions/al;->f(Lcom/dolphin/browser/extensions/al;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "bl"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "blm"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 2048
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bc;->a:Lcom/dolphin/browser/extensions/al;

    iget-object v3, p0, Lcom/dolphin/browser/extensions/bc;->a:Lcom/dolphin/browser/extensions/al;

    invoke-static {v3}, Lcom/dolphin/browser/extensions/al;->g(Lcom/dolphin/browser/extensions/al;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/al;Ljava/util/Set;)V

    .line 2049
    const-string v0, "Add-on blacklist updated"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2056
    :goto_1
    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    .line 2058
    :goto_2
    const-string v0, "Update add-on blacklist finished."

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I

    .line 2059
    return-object v2

    .line 2051
    :cond_0
    :try_start_2
    const-string v0, "Server returns no update."

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 2053
    :catch_0
    move-exception v0

    .line 2054
    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2056
    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 2053
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_1
    move-object v0, v2

    goto/16 :goto_0
.end method
