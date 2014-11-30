.class public Lcom/dolphin/browser/push/b/e;
.super Lcom/dolphin/browser/push/b/j;
.source "AddSpeedDialFolderMessageExcutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/dolphin/browser/push/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/push/v;)V
    .locals 3

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/push/a/e;

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/a/e;

    .line 25
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/launcher/g;->u()Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/launcher/g;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    new-instance v2, Lcom/dolphin/browser/push/b/f;

    invoke-direct {v2, p0, v0, v1}, Lcom/dolphin/browser/push/b/f;-><init>(Lcom/dolphin/browser/push/b/e;Lcom/dolphin/browser/push/a/e;Lcom/dolphin/browser/ui/launcher/g;)V

    invoke-static {v2}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
