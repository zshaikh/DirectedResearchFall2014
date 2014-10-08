.class public Lcom/inmobi/activity/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickAdURLTesting(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    .line 25
    const-class v1, Lcom/inmobi/activity/AdCreativeTesting;

    .line 24
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/inmobi/activity/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method public onClickInmobiAd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 19
    const-class v1, Lcom/inmobi/activity/InMobiAdActivity;

    .line 18
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/inmobi/activity/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/inmobi/activity/LauncherActivity;->setContentView(I)V

    .line 15
    return-void
.end method
