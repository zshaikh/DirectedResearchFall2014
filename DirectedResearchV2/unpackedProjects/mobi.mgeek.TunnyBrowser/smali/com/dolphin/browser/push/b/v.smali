.class public Lcom/dolphin/browser/push/b/v;
.super Lcom/dolphin/browser/push/b/j;
.source "UpdateSpeedDialMessageExcutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/dolphin/browser/push/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/push/v;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 20
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/push/a/f;

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/a/f;

    .line 26
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/dolphin/browser/ui/launcher/g;->u()Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 31
    new-instance v3, Lcom/dolphin/browser/push/b/w;

    invoke-direct {v3, p0, v1}, Lcom/dolphin/browser/push/b/w;-><init>(Lcom/dolphin/browser/push/b/v;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/ui/launcher/g;->b(Lcom/dolphin/browser/launcher/bv;)Lcom/dolphin/browser/launcher/bi;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    check-cast v1, Lcom/dolphin/browser/launcher/cl;

    .line 48
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/launcher/cl;->a(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/launcher/cl;->c(Ljava/lang/String;)V

    .line 51
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 52
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->c()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 54
    invoke-virtual {v1, v6}, Lcom/dolphin/browser/launcher/cl;->a(Landroid/graphics/Bitmap;)V

    .line 55
    invoke-virtual {v1, v5, v0}, Lcom/dolphin/browser/launcher/cl;->a(ILjava/lang/String;)V

    .line 56
    invoke-static {v3, v6}, Lcom/dolphin/browser/launcher/cl;->a(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 57
    const-string v4, "iconType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    const-string v4, "iconResource"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_2
    const-string v0, "title"

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/cl;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "url"

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, v1, v3}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/bi;Landroid/content/ContentValues;)V

    goto :goto_0
.end method
