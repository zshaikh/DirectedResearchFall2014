.class Ldolphin/webkit/kh;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# static fields
.field private static a:Ldolphin/webkit/ki;


# direct methods
.method static declared-synchronized a()Ldolphin/webkit/ki;
    .locals 2

    .prologue
    .line 39
    const-class v1, Ldolphin/webkit/kh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/kh;->a:Ldolphin/webkit/ki;

    if-eqz v0, :cond_0

    sget-object v0, Ldolphin/webkit/kh;->a:Ldolphin/webkit/ki;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :goto_0
    monitor-exit v1

    return-object v0

    .line 41
    :cond_0
    :try_start_1
    const-string v0, "dolphin.webkit.WebViewClassic$Factory"

    invoke-static {v0}, Ldolphin/webkit/kh;->a(Ljava/lang/String;)Ldolphin/webkit/ki;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/kh;->a:Ldolphin/webkit/ki;

    .line 42
    sget-object v0, Ldolphin/webkit/kh;->a:Ldolphin/webkit/ki;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Ldolphin/webkit/WebViewClassic$Factory;

    invoke-direct {v0}, Ldolphin/webkit/WebViewClassic$Factory;-><init>()V

    sput-object v0, Ldolphin/webkit/kh;->a:Ldolphin/webkit/ki;

    .line 46
    :cond_1
    sget-object v0, Ldolphin/webkit/kh;->a:Ldolphin/webkit/ki;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ldolphin/webkit/ki;
    .locals 4

    .prologue
    .line 52
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/ki;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 62
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "WebViewFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    const-string v1, "WebViewFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 59
    :catch_2
    move-exception v0

    .line 60
    const-string v1, "WebViewFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
