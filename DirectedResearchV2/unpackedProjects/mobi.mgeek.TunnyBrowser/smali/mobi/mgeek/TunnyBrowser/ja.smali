.class Lmobi/mgeek/TunnyBrowser/ja;
.super Ljava/lang/Object;
.source "WebsiteSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/is;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/is;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ja;->a:Lmobi/mgeek/TunnyBrowser/is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 566
    invoke-static {}, Lcom/dolphin/browser/core/GeolocationPermissions;->getInstance()Lcom/dolphin/browser/core/IGeolocationPermissions;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ja;->a:Lmobi/mgeek/TunnyBrowser/is;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/is;->c(Lmobi/mgeek/TunnyBrowser/is;)Lmobi/mgeek/TunnyBrowser/ir;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/ir;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/IGeolocationPermissions;->clear(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ja;->a:Lmobi/mgeek/TunnyBrowser/is;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/is;->c(Lmobi/mgeek/TunnyBrowser/is;)Lmobi/mgeek/TunnyBrowser/ir;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/ir;->b(I)V

    .line 568
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ja;->a:Lmobi/mgeek/TunnyBrowser/is;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/is;->c(Lmobi/mgeek/TunnyBrowser/is;)Lmobi/mgeek/TunnyBrowser/ir;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ir;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ja;->a:Lmobi/mgeek/TunnyBrowser/is;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/is;->a(Lmobi/mgeek/TunnyBrowser/is;Lmobi/mgeek/TunnyBrowser/ir;)Lmobi/mgeek/TunnyBrowser/ir;

    .line 571
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ja;->a:Lmobi/mgeek/TunnyBrowser/is;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/is;->a()V

    .line 572
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ja;->a:Lmobi/mgeek/TunnyBrowser/is;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/is;->notifyDataSetChanged()V

    .line 573
    return-void
.end method