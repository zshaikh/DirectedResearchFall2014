.class public Lcom/sgn/mobile/ActionViewActivity;
.super Landroid/app/Activity;
.source "ActionViewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lcom/sgn/mobile/ActionViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 14
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sgn/mobile/SGNMobile;->sendOpenURL(Ljava/lang/String;)V

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/sgn/mobile/ActionViewActivity;->finish()V

    .line 19
    return-void
.end method
