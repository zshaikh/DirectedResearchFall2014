.class public Lcom/dolphin/browser/bookmarks/o;
.super Ljava/lang/Object;
.source "SystemBookmarkImporterFactory.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/dolphin/browser/bookmarks/a;
    .locals 2

    .prologue
    .line 10
    invoke-static {}, Lcom/dolphin/browser/util/Device;->getVersion()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 11
    new-instance v0, Lcom/dolphin/browser/bookmarks/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmarks/c;-><init>(Landroid/content/Context;)V

    .line 13
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dolphin/browser/bookmarks/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmarks/b;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
