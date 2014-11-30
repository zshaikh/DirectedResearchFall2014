.class Lmobi/mgeek/TunnyBrowser/iq;
.super Ljava/lang/Object;
.source "WebsiteSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/iq;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 678
    invoke-static {}, Lcom/dolphin/browser/core/WebStorage;->getInstance()Lcom/dolphin/browser/core/IWebStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebStorage;->deleteAllData()V

    .line 679
    invoke-static {}, Lcom/dolphin/browser/core/GeolocationPermissions;->getInstance()Lcom/dolphin/browser/core/IGeolocationPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IGeolocationPermissions;->clearAll()V

    .line 680
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/hw;->b()V

    .line 681
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/iq;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->b(Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;)Lmobi/mgeek/TunnyBrowser/is;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/is;->a()V

    .line 682
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/iq;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->finish()V

    .line 683
    return-void
.end method
