.class public Lcom/mgeek/android/util/t;
.super Ljava/lang/Object;
.source "PushActivityAnimationUtil.java"


# direct methods
.method public static final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v0, 0x7f040006

    sget-object v1, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v1, 0x7f040009

    invoke-static {p0, v0, v1}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;II)V

    .line 26
    return-void
.end method

.method public static final a(Landroid/app/Activity;II)V
    .locals 3

    .prologue
    .line 42
    if-nez p0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 49
    const-string v1, "extra_need_push_animation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public static final a(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v0, 0x7f040008

    sget-object v1, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v1, 0x7f040007

    invoke-static {p0, p1, p2, v0, v1}, Lcom/mgeek/android/util/t;->a(Landroid/app/Activity;Landroid/content/Intent;III)V

    .line 59
    return-void
.end method

.method public static final a(Landroid/app/Activity;Landroid/content/Intent;III)V
    .locals 2

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v0, "extra_need_push_animation"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    invoke-virtual {p0, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v0, 0x7f040008

    sget-object v1, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v1, 0x7f040007

    invoke-static {p0, p1, v0, v1}, Lcom/mgeek/android/util/t;->a(Landroid/content/Context;Landroid/content/Intent;II)V

    .line 22
    return-void
.end method

.method public static final a(Landroid/content/Context;Landroid/content/Intent;II)V
    .locals 2

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 32
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 33
    const-string v0, "extra_need_push_animation"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
