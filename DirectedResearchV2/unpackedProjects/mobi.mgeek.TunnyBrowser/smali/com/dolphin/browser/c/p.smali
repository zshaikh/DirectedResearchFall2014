.class public Lcom/dolphin/browser/c/p;
.super Lcom/dolphin/browser/c/a;
.source "GetMoreAddonsCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 13
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    .line 17
    :cond_0
    new-instance v1, Lcom/dolphin/browser/c/j;

    invoke-direct {v1}, Lcom/dolphin/browser/c/j;-><init>()V

    invoke-virtual {v1}, Lcom/dolphin/browser/c/j;->a()Z

    .line 18
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/preload/m;->f()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionLoadUrl3(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x1

    goto :goto_0
.end method
