.class public Lcom/dolphin/browser/c/l;
.super Lcom/dolphin/browser/c/a;
.source "DevicesCommand.java"


# instance fields
.field private a:I

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dolphin/browser/c/l;->b:Landroid/content/Context;

    .line 26
    iput p2, p0, Lcom/dolphin/browser/c/l;->a:I

    .line 27
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    const/4 v0, 0x0

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->k()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    .line 42
    const/4 v1, 0x0

    .line 43
    iget v3, p0, Lcom/dolphin/browser/c/l;->a:I

    packed-switch v3, :pswitch_data_0

    .line 60
    :goto_1
    if-eqz v1, :cond_0

    .line 61
    iget-object v2, p0, Lcom/dolphin/browser/c/l;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 45
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dolphin/browser/c/l;->b:Landroid/content/Context;

    const-class v3, Lcom/dolphin/browser/bookmark/TabSyncActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 48
    :pswitch_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dolphin/browser/c/l;->b:Landroid/content/Context;

    const-class v3, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 54
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dolphin/browser/c/l;->b:Landroid/content/Context;

    const-class v3, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
