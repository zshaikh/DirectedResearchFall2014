.class Lmobi/mgeek/TunnyBrowser/ip;
.super Ljava/lang/Object;
.source "WebsiteSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ip;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ip;->a:Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/WebsiteSettingsActivity;->onBackPressed()V

    .line 650
    return-void
.end method
