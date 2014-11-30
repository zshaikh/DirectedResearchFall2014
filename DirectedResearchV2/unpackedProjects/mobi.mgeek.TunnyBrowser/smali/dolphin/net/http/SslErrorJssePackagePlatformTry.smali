.class public Ldolphin/net/http/SslErrorJssePackagePlatformTry;
.super Ljava/lang/Object;
.source "SslErrorJssePackagePlatformTry.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static IS_INIT:Z

.field private static IS_SSLCONTEXTIMPL_EXIST:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getJsseOpenSSLContextImpl()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;-><init>()V

    .line 41
    return-void
.end method

.method public static isSslJssePackageExist()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Ldolphin/net/http/SslErrorJssePackagePlatformTry;->IS_INIT:Z

    if-eqz v0, :cond_0

    .line 32
    sget-boolean v0, Ldolphin/net/http/SslErrorJssePackagePlatformTry;->IS_SSLCONTEXTIMPL_EXIST:Z

    .line 35
    :goto_0
    return v0

    .line 34
    :cond_0
    invoke-static {}, Ldolphin/net/http/SslErrorJssePackagePlatformTry;->tryGetOpenSSLContextImpl()V

    .line 35
    sget-boolean v0, Ldolphin/net/http/SslErrorJssePackagePlatformTry;->IS_SSLCONTEXTIMPL_EXIST:Z

    goto :goto_0
.end method

.method public static tryGetOpenSSLContextImpl()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    sput-boolean v0, Ldolphin/net/http/SslErrorJssePackagePlatformTry;->IS_INIT:Z

    .line 17
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_0

    .line 18
    sput-boolean v1, Ldolphin/net/http/SslErrorJssePackagePlatformTry;->IS_SSLCONTEXTIMPL_EXIST:Z

    .line 27
    :goto_0
    return-void

    .line 22
    :cond_0
    :try_start_0
    invoke-static {}, Ldolphin/net/http/SslErrorJssePackagePlatformTry;->getJsseOpenSSLContextImpl()V

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Ldolphin/net/http/SslErrorJssePackagePlatformTry;->IS_SSLCONTEXTIMPL_EXIST:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    sput-boolean v1, Ldolphin/net/http/SslErrorJssePackagePlatformTry;->IS_SSLCONTEXTIMPL_EXIST:Z

    goto :goto_0
.end method
