.class Lcom/dolphin/browser/bookmark/g;
.super Landroid/os/Handler;
.source "AddBookmarkPage.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/AddBookmarkPage;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/g;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 504
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 517
    :goto_0
    return-void

    .line 506
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/g;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00be

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/g;->a:Lcom/dolphin/browser/bookmark/AddBookmarkPage;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00bd

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
