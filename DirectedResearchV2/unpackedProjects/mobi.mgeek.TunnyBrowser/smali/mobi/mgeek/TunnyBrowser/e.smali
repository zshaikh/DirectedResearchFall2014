.class Lmobi/mgeek/TunnyBrowser/e;
.super Lcom/dolphin/browser/util/f;
.source "AboutPageManager.java"


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
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/b;


# direct methods
.method private constructor <init>(Lmobi/mgeek/TunnyBrowser/b;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/e;->a:Lmobi/mgeek/TunnyBrowser/b;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/mgeek/TunnyBrowser/b;Lmobi/mgeek/TunnyBrowser/c;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/e;-><init>(Lmobi/mgeek/TunnyBrowser/b;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/e;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/e;->a:Lmobi/mgeek/TunnyBrowser/b;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/b;->a(Lmobi/mgeek/TunnyBrowser/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_modified"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/e;->a:Lmobi/mgeek/TunnyBrowser/b;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/b;->a(Lmobi/mgeek/TunnyBrowser/b;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "last_save_url"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :try_start_0
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/e;->a:Lmobi/mgeek/TunnyBrowser/b;

    invoke-static {v3}, Lmobi/mgeek/TunnyBrowser/b;->b(Lmobi/mgeek/TunnyBrowser/b;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/b;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "About page Request Url: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/Header;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "If-Modified-Since"

    invoke-direct {v5, v6, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v4

    .line 88
    :goto_0
    new-instance v1, Lcom/dolphin/browser/Network/h;

    invoke-direct {v1, v3}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1388

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/Network/h;->b(I)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    const/16 v4, 0x1388

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/Network/h;->a(I)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    const-string v4, "About"

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/Network/h;->b(Ljava/lang/String;)Lcom/dolphin/browser/Network/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/Network/h;->a([Lorg/apache/http/Header;)Lcom/dolphin/browser/Network/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/dolphin/browser/Network/d;->g()Lcom/dolphin/browser/Network/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 96
    :try_start_1
    iget-object v0, v1, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 97
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_1

    .line 98
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/b;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/b;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 101
    :cond_0
    iget-object v0, v1, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/b;->e()Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/dolphin/browser/Network/l;->a(Lorg/apache/http/HttpEntity;Ljava/io/File;)V

    .line 103
    iget-object v0, v1, Lcom/dolphin/browser/Network/n;->a:Lorg/apache/http/HttpResponse;

    const-string v4, "Last-Modified"

    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_1
    iget-object v4, p0, Lmobi/mgeek/TunnyBrowser/e;->a:Lmobi/mgeek/TunnyBrowser/b;

    invoke-static {v4}, Lmobi/mgeek/TunnyBrowser/b;->a(Lmobi/mgeek/TunnyBrowser/b;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 110
    const-string v5, "last_modified"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    const-string v0, "last_save_url"

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    :cond_1
    invoke-static {v1}, Lcom/dolphin/browser/Network/l;->a(Lcom/dolphin/browser/Network/n;)V

    .line 119
    :goto_2
    return-object v2

    .line 114
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 115
    :goto_3
    :try_start_2
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
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

    .line 114
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto/16 :goto_0
.end method
