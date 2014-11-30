.class public Lcom/dolphin/browser/promoted/s;
.super Lcom/dolphin/browser/promoted/a;
.source "RatingPromotion.java"


# instance fields
.field private b:Lcom/dolphin/browser/m/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/dolphin/browser/promoted/a;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/dolphin/browser/m/c;

    const-string v1, "rating_"

    invoke-direct {v0, p1, v1}, Lcom/dolphin/browser/m/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/promoted/s;->b:Lcom/dolphin/browser/m/c;

    .line 23
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/promoted/s;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/m/c;->a(Z)V

    .line 74
    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lcom/dolphin/browser/promoted/j;->a()Lcom/dolphin/browser/promoted/l;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Lcom/dolphin/browser/promoted/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 82
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 5

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/dolphin/browser/promoted/s;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {v1}, Lcom/dolphin/browser/m/c;->g()J

    move-result-wide v1

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 69
    :cond_0
    return v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/dolphin/browser/promoted/j;->a()Lcom/dolphin/browser/promoted/l;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Lcom/dolphin/browser/promoted/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/promoted/s;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 93
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-static {}, Lcom/dolphin/browser/promoted/j;->a()Lcom/dolphin/browser/promoted/l;

    move-result-object v1

    .line 29
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/s;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/dolphin/browser/promoted/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/promoted/s;->b:Lcom/dolphin/browser/m/c;

    const-string v2, "rating"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/m/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/promoted/s;->b:Lcom/dolphin/browser/m/c;

    invoke-virtual {v1}, Lcom/dolphin/browser/m/c;->d()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/promoted/s;->a:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/promoted/s;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, ""

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/promoted/s;->a:Landroid/content/Context;

    const-string v1, "rating_message"

    invoke-static {v0, v1}, Lcom/dolphin/browser/promoted/s;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/s;->g()V

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/promoted/s;->a(Z)V

    .line 56
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/promoted/s;->a(Z)V

    .line 61
    return-void
.end method
