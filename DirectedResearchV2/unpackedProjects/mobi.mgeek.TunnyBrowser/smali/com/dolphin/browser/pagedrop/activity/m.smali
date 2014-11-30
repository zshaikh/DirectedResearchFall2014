.class Lcom/dolphin/browser/pagedrop/activity/m;
.super Ljava/lang/Object;
.source "PagedropSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/activity/m;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 414
    packed-switch p2, :pswitch_data_0

    .line 433
    :goto_0
    return-void

    .line 416
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 417
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/m;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/m;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/activity/m;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-virtual {v2}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e03e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 426
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
