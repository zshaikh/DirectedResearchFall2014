.class public Lcom/dolphin/browser/push/b/a;
.super Lcom/dolphin/browser/push/b/j;
.source "AddBookmarkFolderMessageExcutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/dolphin/browser/push/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/push/v;)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 17
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/push/a/e;

    if-nez v0, :cond_1

    .line 30
    :cond_0
    return-void

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/dolphin/browser/push/a/e;

    .line 23
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 24
    invoke-virtual {v1}, Lcom/dolphin/browser/push/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 25
    cmp-long v2, v3, v5

    if-lez v2, :cond_0

    .line 26
    invoke-virtual {v1}, Lcom/dolphin/browser/push/a/e;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/dolphin/browser/push/a/f;

    .line 27
    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/provider/Browser;->addBookmark(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/net/Uri;

    goto :goto_0
.end method
