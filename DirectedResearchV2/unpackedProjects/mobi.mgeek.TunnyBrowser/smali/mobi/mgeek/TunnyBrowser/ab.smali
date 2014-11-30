.class Lmobi/mgeek/TunnyBrowser/ab;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 1387
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ab;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1390
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ab;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->p(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->g(Z)V

    .line 1391
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ab;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->p(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ab;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->t(Landroid/content/Context;)V

    .line 1392
    invoke-static {v2}, Lcom/mgeek/android/util/u;->a(Z)V

    .line 1393
    new-instance v0, Lcom/dolphin/browser/DolphinService/j;

    invoke-direct {v0}, Lcom/dolphin/browser/DolphinService/j;-><init>()V

    invoke-static {v0}, Lcom/dolphin/browser/promoted/j;->a(Lcom/dolphin/browser/promoted/l;)V

    .line 1394
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/DolphinService/i;->a()Lcom/dolphin/browser/DolphinService/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/promoted/f;->a(Landroid/content/Context;Lcom/dolphin/browser/promoted/y;)V

    .line 1396
    invoke-static {}, Lcom/dolphin/browser/m/d;->a()Lcom/dolphin/browser/m/d;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/m/d;->a(J)V

    .line 1398
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ab;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lcom/dolphin/browser/m/f;->b(Landroid/content/Context;)Lcom/dolphin/browser/m/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/m/f;->d()V

    .line 1399
    return-void
.end method
