.class public Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$1;,
        Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Lcom/pocketchange/android/util/MethodCacheByName;

.field protected final debug:Z

.field protected final logMsgPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "native://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "jsInterface"    # Ljava/lang/Object;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;-><init>(Ljava/lang/Object;Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "jsInterface"    # Ljava/lang/Object;
    .param p2, "debug"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->b:Ljava/lang/Object;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/pocketchange/android/util/MethodCacheByName;

    invoke-direct {v1, v0}, Lcom/pocketchange/android/util/MethodCacheByName;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->c:Lcom/pocketchange/android/util/MethodCacheByName;

    .line 42
    iput-boolean p2, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->debug:Z

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->logMsgPrefix:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->a:I

    return v0
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const-string v7, "]"

    const-string v6, "WebViewClientWithJSInterface"

    .line 47
    const-string v0, "native://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    iget-boolean v0, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->debug:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "WebViewClientWithJSInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->logMsgPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Received call for native method URL ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    :try_start_0
    new-instance v0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;-><init>(Ljava/lang/String;Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$1;)V

    .line 53
    invoke-virtual {v0}, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->a()Ljava/lang/String;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->c:Lcom/pocketchange/android/util/MethodCacheByName;

    invoke-virtual {v2, v1}, Lcom/pocketchange/android/util/MethodCacheByName;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 55
    if-nez v2, :cond_1

    .line 56
    const-string v0, "WebViewClientWithJSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->logMsgPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Could not find interface method ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    const/4 v0, 0x1

    .line 96
    :goto_1
    return v0

    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface$a;->b()[Ljava/lang/Object;

    move-result-object v0

    .line 59
    iget-boolean v3, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->debug:Z

    if-eqz v3, :cond_2

    .line 60
    const-string v3, "WebViewClientWithJSInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->logMsgPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Invoking method ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] with arguments "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in response to native method URL ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->b:Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    iget-boolean v1, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->debug:Z

    if-eqz v1, :cond_3

    .line 66
    const-string v1, "WebViewClientWithJSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->logMsgPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Error invoking native method URL ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 68
    :cond_3
    const-string v0, "WebViewClientWithJSInterface"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pocketchange/android/webkit/WebViewClientWithJSInterface;->logMsgPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Error invoking native method"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 96
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1
.end method
