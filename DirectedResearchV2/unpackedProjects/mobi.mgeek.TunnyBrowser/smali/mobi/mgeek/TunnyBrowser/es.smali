.class Lmobi/mgeek/TunnyBrowser/es;
.super Ljava/lang/Object;
.source "ExitManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/ei;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ei;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/es;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 312
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/es;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/ei;->a(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    const-class v2, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    const-string v1, "tab"

    const-string v2, "downloading"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/es;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/ei;->a(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 317
    return-void
.end method
