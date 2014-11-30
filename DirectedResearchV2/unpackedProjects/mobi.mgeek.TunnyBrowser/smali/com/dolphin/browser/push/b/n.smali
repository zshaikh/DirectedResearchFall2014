.class public Lcom/dolphin/browser/push/b/n;
.super Lcom/dolphin/browser/push/b/j;
.source "DeleteSpeedDialMessageExcutor.java"


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
    .locals 4

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/push/a/f;

    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/a/f;

    .line 25
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/launcher/g;->u()Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->b()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v3, Lcom/dolphin/browser/push/b/o;

    invoke-direct {v3, p0, v2, v0}, Lcom/dolphin/browser/push/b/o;-><init>(Lcom/dolphin/browser/push/b/n;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/ui/launcher/g;->b(Lcom/dolphin/browser/launcher/bv;)Lcom/dolphin/browser/launcher/bi;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    .line 50
    new-instance v2, Lcom/dolphin/browser/push/b/p;

    invoke-direct {v2, p0, v1, v0}, Lcom/dolphin/browser/push/b/p;-><init>(Lcom/dolphin/browser/push/b/n;Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/launcher/cl;)V

    invoke-static {v2}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
