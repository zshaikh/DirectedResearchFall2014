.class public Lcom/dolphin/browser/push/b/g;
.super Lcom/dolphin/browser/push/b/j;
.source "AddSpeedDialMessageExcutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dolphin/browser/push/b/j;-><init>()V

    return-void
.end method

.method private a(Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/launcher/bi;ZI)V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/dolphin/browser/push/b/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/push/b/i;-><init>(Lcom/dolphin/browser/push/b/g;Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/launcher/bi;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method private a(Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/launcher/cl;Ljava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p1, p3}, Lcom/dolphin/browser/ui/launcher/g;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    move v0, v1

    .line 99
    :goto_0
    return v0

    .line 78
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/bi;

    .line 82
    check-cast v0, Lcom/dolphin/browser/launcher/be;

    .line 84
    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/be;->d()I

    move-result v4

    if-ge v4, v2, :cond_1

    .line 88
    new-instance v1, Lcom/dolphin/browser/push/b/h;

    invoke-direct {v1, p0, v0, p2, p4}, Lcom/dolphin/browser/push/b/h;-><init>(Lcom/dolphin/browser/push/b/g;Lcom/dolphin/browser/launcher/be;Lcom/dolphin/browser/launcher/cl;I)V

    invoke-static {v1}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 99
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/push/v;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 25
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/push/a/f;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/dolphin/browser/push/v;->c()Lcom/dolphin/browser/push/a/a;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/a/f;

    .line 31
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v6

    .line 32
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/dolphin/browser/ui/launcher/g;->u()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/dolphin/browser/ui/launcher/g;->d(Ljava/lang/String;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v1

    if-nez v1, :cond_0

    .line 38
    const/4 v2, -0x1

    .line 39
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->b()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 41
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 42
    array-length v3, v5

    if-le v3, v10, :cond_4

    aget-object v3, v5, v9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    aget-object v3, v5, v8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    aget-object v3, v5, v10

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 44
    aget-object v1, v5, v9

    .line 45
    aget-object v3, v5, v8

    .line 47
    const/4 v7, 0x2

    :try_start_0
    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 53
    :goto_1
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lcom/dolphin/browser/launcher/cl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v10, v4}, Lcom/dolphin/browser/launcher/cl;->a(ILjava/lang/String;)V

    .line 55
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/launcher/cl;->a(I)V

    .line 56
    const-string v4, "push"

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/launcher/cl;->d(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    invoke-virtual {v1, v8}, Lcom/dolphin/browser/launcher/cl;->a(I)V

    .line 60
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    invoke-direct {p0, v6, v1, v8, v9}, Lcom/dolphin/browser/push/b/g;->a(Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/launcher/bi;ZI)V

    goto/16 :goto_0

    .line 48
    :catch_0
    move-exception v5

    .line 49
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 63
    :cond_3
    invoke-direct {p0, v6, v1, v3, v2}, Lcom/dolphin/browser/push/b/g;->a(Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/launcher/cl;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0, v6, v1, v8, v9}, Lcom/dolphin/browser/push/b/g;->a(Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/launcher/bi;ZI)V

    goto/16 :goto_0

    :cond_4
    move-object v3, v4

    goto :goto_1
.end method
