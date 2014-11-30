.class public Lcom/dolphin/browser/addons/k;
.super Lcom/dolphin/browser/addons/ab;
.source "HttpAuthHandlerImpl.java"


# instance fields
.field private a:Lcom/dolphin/browser/core/IHttpAuthHandler;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/IHttpAuthHandler;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dolphin/browser/addons/ab;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/dolphin/browser/addons/k;->a:Lcom/dolphin/browser/core/IHttpAuthHandler;

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/addons/k;->a:Lcom/dolphin/browser/core/IHttpAuthHandler;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IHttpAuthHandler;->cancel()V

    .line 40
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/addons/k;->a:Lcom/dolphin/browser/core/IHttpAuthHandler;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/IHttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/addons/k;->a:Lcom/dolphin/browser/core/IHttpAuthHandler;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IHttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v0

    return v0
.end method
