.class public Lcom/dolphin/browser/push/b/b;
.super Lcom/dolphin/browser/push/b/j;
.source "AddBookmarkMessageExcutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/dolphin/browser/push/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/push/v;)V
    .locals 6

    .prologue
    .line 14
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/push/a/f;

    if-nez v0, :cond_0

    .line 22
    :goto_0
    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/dolphin/browser/push/a/f;

    .line 20
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/dolphin/browser/push/a/f;->b()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/provider/Browser;->addBookmark(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/net/Uri;

    goto :goto_0
.end method
