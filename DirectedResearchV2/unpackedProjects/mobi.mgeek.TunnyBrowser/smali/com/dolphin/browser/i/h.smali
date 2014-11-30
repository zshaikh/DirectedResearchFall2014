.class public Lcom/dolphin/browser/i/h;
.super Lcom/dolphin/browser/i/a/d;
.source "WebServiceConfigurationImpl.java"


# static fields
.field private static a:Lcom/dolphin/browser/i/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/dolphin/browser/i/a/d;-><init>()V

    .line 13
    return-void
.end method

.method public static a()Lcom/dolphin/browser/i/h;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/dolphin/browser/i/h;->a:Lcom/dolphin/browser/i/h;

    if-nez v0, :cond_1

    .line 17
    const-class v1, Lcom/dolphin/browser/i/h;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/i/h;->a:Lcom/dolphin/browser/i/h;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/dolphin/browser/i/h;

    invoke-direct {v0}, Lcom/dolphin/browser/i/h;-><init>()V

    sput-object v0, Lcom/dolphin/browser/i/h;->a:Lcom/dolphin/browser/i/h;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lcom/dolphin/browser/i/h;->a:Lcom/dolphin/browser/i/h;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "http://nameservice.dolphin-browser.com/"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/dolphin/browser/util/ao;->a()Lcom/dolphin/browser/util/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/ao;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isBrowserCN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "cn"

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "en"

    goto :goto_0
.end method
