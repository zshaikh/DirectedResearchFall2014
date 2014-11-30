.class public final Lcom/dolphin/browser/webkit/management/a;
.super Ljava/lang/Object;
.source "CacheHealthUtils.java"


# direct methods
.method public static final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/dolphin/browser/webkit/management/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/webkit/management/b;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->a:Lcom/dolphin/browser/util/t;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Ljava/lang/Runnable;Lcom/dolphin/browser/util/t;)V

    .line 85
    return-void
.end method
