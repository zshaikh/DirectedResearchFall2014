.class public Lcom/dolphin/browser/s/a;
.super Lcom/dolphin/browser/promoted/a;
.source "ShareDolphinPromotion.java"


# instance fields
.field private b:Lcom/dolphin/browser/s/q;

.field private c:Lcom/dolphin/browser/s/p;

.field private d:Lcom/dolphin/browser/s/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/s/q;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/dolphin/browser/promoted/a;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Lcom/dolphin/browser/s/a;->b:Lcom/dolphin/browser/s/q;

    .line 24
    invoke-static {}, Lcom/dolphin/browser/s/b;->a()Lcom/dolphin/browser/s/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/s/a;->d:Lcom/dolphin/browser/s/b;

    .line 25
    iget-object v0, p0, Lcom/dolphin/browser/s/a;->d:Lcom/dolphin/browser/s/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/s/b;->d()Lcom/dolphin/browser/s/p;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/s/a;->c:Lcom/dolphin/browser/s/p;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 30
    iget-object v1, p0, Lcom/dolphin/browser/s/a;->c:Lcom/dolphin/browser/s/p;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/s/a;->c:Lcom/dolphin/browser/s/p;

    invoke-virtual {v1}, Lcom/dolphin/browser/s/p;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/s/a;->b:Lcom/dolphin/browser/s/q;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/s/a;->b:Lcom/dolphin/browser/s/q;

    invoke-virtual {v1}, Lcom/dolphin/browser/s/q;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/s/a;->b:Lcom/dolphin/browser/s/q;

    invoke-virtual {v1}, Lcom/dolphin/browser/s/q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, ""

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/s/a;->a:Landroid/content/Context;

    const-string v1, "share_dolphin_title_text"

    invoke-static {v0, v1}, Lcom/dolphin/browser/s/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 48
    const-string v0, "ShareDolphinPromotion"

    const-string v1, "accept clicked"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/s/a;->b:Lcom/dolphin/browser/s/q;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/s/q;->a(Z)V

    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/s/a;->d:Lcom/dolphin/browser/s/b;

    iget-object v1, p0, Lcom/dolphin/browser/s/a;->b:Lcom/dolphin/browser/s/q;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/q;)V

    .line 51
    const-string v0, "whistle"

    const-string v1, "share_dolphin"

    const-string v2, "confirm"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/s/a;->a:Landroid/content/Context;

    const-class v2, Lcom/dolphin/browser/share/ShareActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    const-string v1, "shared_title"

    iget-object v2, p0, Lcom/dolphin/browser/s/a;->b:Lcom/dolphin/browser/s/q;

    invoke-virtual {v2}, Lcom/dolphin/browser/s/q;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v1, "shared_url"

    iget-object v2, p0, Lcom/dolphin/browser/s/a;->b:Lcom/dolphin/browser/s/q;

    invoke-virtual {v2}, Lcom/dolphin/browser/s/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "shared_type"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "shared_source"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/dolphin/browser/s/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 63
    const-string v0, "ShareDolphinPromotion"

    const-string v1, "cancel clicked"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/s/a;->b:Lcom/dolphin/browser/s/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/s/q;->a(Z)V

    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/s/a;->d:Lcom/dolphin/browser/s/b;

    iget-object v1, p0, Lcom/dolphin/browser/s/a;->b:Lcom/dolphin/browser/s/q;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/q;)V

    .line 66
    const-string v0, "whistle"

    const-string v1, "share_dolphin"

    const-string v2, "cancel"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
