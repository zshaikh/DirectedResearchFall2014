.class Lcom/dolphin/browser/dolphinwebkit/SslErrorHandlerWrapper;
.super Ljava/lang/Object;
.source "SslErrorHandlerWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/ISslErrorHandler;


# instance fields
.field private final mHandler:Ldolphin/webkit/SslErrorHandler;


# direct methods
.method public constructor <init>(Ldolphin/webkit/SslErrorHandler;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/SslErrorHandlerWrapper;->mHandler:Ldolphin/webkit/SslErrorHandler;

    .line 32
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/SslErrorHandlerWrapper;->mHandler:Ldolphin/webkit/SslErrorHandler;

    invoke-virtual {v0}, Ldolphin/webkit/SslErrorHandler;->cancel()V

    .line 42
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/SslErrorHandlerWrapper;->mHandler:Ldolphin/webkit/SslErrorHandler;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/SslErrorHandlerWrapper;->mHandler:Ldolphin/webkit/SslErrorHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public proceed()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/SslErrorHandlerWrapper;->mHandler:Ldolphin/webkit/SslErrorHandler;

    invoke-virtual {v0}, Ldolphin/webkit/SslErrorHandler;->proceed()V

    .line 37
    return-void
.end method
