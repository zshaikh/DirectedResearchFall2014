.class public Lcom/dolphin/browser/dolphinwebkit/HttpAuthHandlerWrapper;
.super Ljava/lang/Object;
.source "HttpAuthHandlerWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IHttpAuthHandler;


# instance fields
.field private final mHandler:Ldolphin/webkit/HttpAuthHandler;


# direct methods
.method public constructor <init>(Ldolphin/webkit/HttpAuthHandler;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/HttpAuthHandlerWrapper;->mHandler:Ldolphin/webkit/HttpAuthHandler;

    .line 33
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/HttpAuthHandlerWrapper;->mHandler:Ldolphin/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Ldolphin/webkit/HttpAuthHandler;->cancel()V

    .line 43
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/HttpAuthHandlerWrapper;->mHandler:Ldolphin/webkit/HttpAuthHandler;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getHandler()Ldolphin/webkit/HttpAuthHandler;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/HiddenAPI;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/HttpAuthHandlerWrapper;->mHandler:Ldolphin/webkit/HttpAuthHandler;

    return-object v0
.end method

.method public bridge synthetic getHandler()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/dolphin/browser/dolphinwebkit/HttpAuthHandlerWrapper;->getHandler()Ldolphin/webkit/HttpAuthHandler;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/HttpAuthHandlerWrapper;->mHandler:Ldolphin/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/HttpAuthHandlerWrapper;->mHandler:Ldolphin/webkit/HttpAuthHandler;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public useHttpAuthUsernamePassword()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/HttpAuthHandlerWrapper;->mHandler:Ldolphin/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Ldolphin/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v0

    return v0
.end method
