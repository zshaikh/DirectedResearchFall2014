.class public Lcom/dolphin/browser/bookmarks/g;
.super Lcom/dolphin/browser/bookmarks/i;
.source "BookmarkManager.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmarks/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/bookmarks/k;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dolphin/browser/bookmarks/k;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmarks/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/bookmarks/i;-><init>(Landroid/content/Context;Lcom/dolphin/browser/bookmarks/k;)V

    .line 106
    iput-object p3, p0, Lcom/dolphin/browser/bookmarks/g;->a:Ljava/util/List;

    .line 107
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    iget-object v1, p0, Lcom/dolphin/browser/bookmarks/g;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/dolphin/browser/bookmarks/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmarks/a;

    .line 142
    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/dolphin/browser/bookmarks/a;->a(JJ)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 146
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmarks/g;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 115
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->i()Lcom/dolphin/browser/extensions/IBookmarkExtension;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onImportBegan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    invoke-super {p0}, Lcom/dolphin/browser/bookmarks/i;->a()V

    .line 121
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 129
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->i()Lcom/dolphin/browser/extensions/IBookmarkExtension;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onImportFinished()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    invoke-super {p0, p1}, Lcom/dolphin/browser/bookmarks/i;->a(Ljava/lang/Integer;)V

    .line 135
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmarks/g;->a(Ljava/lang/Integer;)V

    return-void
.end method
