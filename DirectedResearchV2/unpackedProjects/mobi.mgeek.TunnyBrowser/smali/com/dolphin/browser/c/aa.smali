.class public Lcom/dolphin/browser/c/aa;
.super Lcom/dolphin/browser/c/a;
.source "ToggleTabListCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Q()V

    .line 16
    const/4 v0, 0x1

    goto :goto_0
.end method