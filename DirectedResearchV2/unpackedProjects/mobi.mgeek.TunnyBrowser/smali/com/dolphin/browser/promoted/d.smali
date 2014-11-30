.class public Lcom/dolphin/browser/promoted/d;
.super Lcom/dolphin/browser/promoted/a;
.source "JoinUxPromotion.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/dolphin/browser/promoted/a;-><init>(Landroid/content/Context;)V

    .line 9
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/dolphin/browser/promoted/j;->a()Lcom/dolphin/browser/promoted/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/promoted/l;->a(Z)V

    .line 43
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/dolphin/browser/promoted/j;->a()Lcom/dolphin/browser/promoted/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/promoted/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, ""

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dolphin/browser/promoted/d;->a:Landroid/content/Context;

    const-string v1, "join_ux_plan_title_text"

    invoke-static {v0, v1}, Lcom/dolphin/browser/promoted/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/d;->a(Z)V

    .line 33
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/promoted/d;->a(Z)V

    .line 38
    return-void
.end method
