.class public Lcom/dolphin/browser/preload/a;
.super Ljava/lang/Object;
.source "ABTest.java"


# direct methods
.method public static a(Lcom/dolphin/browser/preload/a/b;)V
    .locals 5

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/dolphin/browser/preload/a/b;->p()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/dolphin/browser/preload/a/b;->o()Z

    move-result v3

    .line 17
    invoke-virtual {p0}, Lcom/dolphin/browser/preload/a/b;->n()Lcom/dolphin/browser/preload/a/f;

    move-result-object v4

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz v4, :cond_0

    .line 21
    invoke-virtual {v4}, Lcom/dolphin/browser/preload/a/f;->c()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v4}, Lcom/dolphin/browser/preload/a/f;->b()Z

    move-result v0

    .line 25
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    if-eqz v3, :cond_2

    .line 27
    const-string v0, "D"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "S"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/preload/a;->a(Ljava/lang/String;)V

    .line 36
    :cond_1
    :goto_0
    return-void

    .line 31
    :cond_2
    if-eqz v0, :cond_1

    .line 32
    const-string v0, "S"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/preload/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/dolphin/browser/preload/n;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/preload/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/preload/n;->l(Ljava/lang/String;)V

    .line 41
    return-void
.end method
