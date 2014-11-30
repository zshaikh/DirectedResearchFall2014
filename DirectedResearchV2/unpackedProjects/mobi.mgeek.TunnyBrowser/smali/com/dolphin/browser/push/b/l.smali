.class public Lcom/dolphin/browser/push/b/l;
.super Lcom/dolphin/browser/push/b/j;
.source "DeleteBookmarkMessageExcutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/dolphin/browser/push/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/push/v;)V
    .locals 4

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/push/a/f;

    if-nez v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/a/f;

    .line 22
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 24
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/dolphin/browser/provider/Browser;->c(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0
.end method
