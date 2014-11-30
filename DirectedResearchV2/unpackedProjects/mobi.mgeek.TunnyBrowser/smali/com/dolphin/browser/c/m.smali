.class public Lcom/dolphin/browser/c/m;
.super Lcom/dolphin/browser/c/a;
.source "DolphinKeyCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 13
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0

    .line 17
    :cond_0
    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->showMiddlePageView(Z)V

    .line 18
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/dolphin/browser/vg/VoiceGestureActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
