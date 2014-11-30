.class Lcom/dolphin/browser/t/e;
.super Ljava/lang/Object;
.source "DownloadHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field final synthetic b:Lcom/dolphin/browser/t/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/a;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/dolphin/browser/t/e;->b:Lcom/dolphin/browser/t/a;

    iput-object p2, p0, Lcom/dolphin/browser/t/e;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/dolphin/browser/t/e;->b:Lcom/dolphin/browser/t/a;

    iget-object v1, p0, Lcom/dolphin/browser/t/e;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iget-object v2, p0, Lcom/dolphin/browser/t/e;->b:Lcom/dolphin/browser/t/a;

    invoke-static {v2}, Lcom/dolphin/browser/t/a;->a(Lcom/dolphin/browser/t/a;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/t/a;->a(Lcom/dolphin/browser/t/a;Landroid/app/Activity;Ljava/lang/String;)V

    .line 388
    const-string v0, "download management"

    const-string v1, "downloaddialog"

    const-string v2, "changedirectory"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method
