.class Ldolphin/webkit/jk;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Ldolphin/webkit/WebStorage$QuotaUpdater;


# instance fields
.field final synthetic a:Ldolphin/webkit/WebViewCore;


# direct methods
.method constructor <init>(Ldolphin/webkit/WebViewCore;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Ldolphin/webkit/jk;->a:Ldolphin/webkit/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateQuota(J)V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Ldolphin/webkit/jk;->a:Ldolphin/webkit/WebViewCore;

    iget-object v1, p0, Ldolphin/webkit/jk;->a:Ldolphin/webkit/WebViewCore;

    # getter for: Ldolphin/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Ldolphin/webkit/WebViewCore;->access$300(Ldolphin/webkit/WebViewCore;)I

    move-result v1

    # invokes: Ldolphin/webkit/WebViewCore;->nativeSetNewStorageLimit(IJ)V
    invoke-static {v0, v1, p1, p2}, Ldolphin/webkit/WebViewCore;->access$400(Ldolphin/webkit/WebViewCore;IJ)V

    .line 557
    return-void
.end method
