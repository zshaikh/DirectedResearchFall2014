.class Lmobi/mgeek/TunnyBrowser/dt;
.super Ljava/lang/Object;
.source "DeferredTaskManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/cz;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/cz;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/dt;->b:Lmobi/mgeek/TunnyBrowser/cz;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/dt;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=mobi.mgeek.TunnyBrowser"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 434
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 436
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/dt;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 438
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/dt;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->finish()V

    .line 439
    return-void
.end method
