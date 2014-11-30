.class public Lcom/dolphin/browser/promoted/u;
.super Lcom/dolphin/browser/promoted/a;
.source "SetAsDefaultBrowserPromotion.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/dolphin/browser/promoted/a;-><init>(Landroid/content/Context;)V

    .line 9
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/dolphin/browser/promoted/j;->a()Lcom/dolphin/browser/promoted/l;

    move-result-object v0

    .line 62
    invoke-interface {v0, p1}, Lcom/dolphin/browser/promoted/l;->d(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private a(ZZ)V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/dolphin/browser/promoted/j;->a()Lcom/dolphin/browser/promoted/l;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/dolphin/browser/promoted/u;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/dolphin/browser/promoted/l;->a(Landroid/content/Context;ZZ)V

    .line 57
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/promoted/l;->a(ZZ)V

    .line 58
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 13
    invoke-static {}, Lcom/dolphin/browser/promoted/j;->a()Lcom/dolphin/browser/promoted/l;

    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/dolphin/browser/promoted/u;->a:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/dolphin/browser/promoted/l;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    iget-object v3, p0, Lcom/dolphin/browser/promoted/u;->a:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/dolphin/browser/promoted/l;->c(Landroid/content/Context;)V

    .line 19
    :cond_0
    iget-object v3, p0, Lcom/dolphin/browser/promoted/u;->a:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/dolphin/browser/promoted/l;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    iget-object v1, p0, Lcom/dolphin/browser/promoted/u;->a:Landroid/content/Context;

    invoke-interface {v2, v1, v0, v0}, Lcom/dolphin/browser/promoted/l;->a(Landroid/content/Context;ZZ)V

    .line 29
    :goto_0
    return v0

    .line 25
    :cond_1
    invoke-interface {v2}, Lcom/dolphin/browser/promoted/l;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 26
    goto :goto_0

    :cond_2
    move v0, v1

    .line 29
    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, ""

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/promoted/u;->a:Landroid/content/Context;

    const-string v1, "set_default_info"

    invoke-static {v0, v1}, Lcom/dolphin/browser/promoted/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0, v0}, Lcom/dolphin/browser/promoted/u;->a(ZZ)V

    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/promoted/u;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/promoted/u;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/promoted/u;->a(ZZ)V

    .line 51
    return-void
.end method
