.class Lmobi/mgeek/TunnyBrowser/ah;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/dolphin/browser/search/ui/x;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 2314
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ah;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 2319
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ah;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2320
    return-void
.end method
