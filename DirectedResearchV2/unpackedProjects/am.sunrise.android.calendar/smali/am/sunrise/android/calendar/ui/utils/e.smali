.class public Lam/sunrise/android/calendar/ui/utils/e;
.super Ljava/lang/Object;
.source "WebViewExtras.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    const-string v0, "webview.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 27
    const-string v0, "webviewCache.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 28
    return-void
.end method
