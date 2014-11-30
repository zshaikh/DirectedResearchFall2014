.class Lmobi/mgeek/TunnyBrowser/af;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 2289
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/af;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 2294
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/af;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->r(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    .line 2295
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/af;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->j(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/titlebar/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/titlebar/q;->a(I)V

    .line 2296
    return-void
.end method
