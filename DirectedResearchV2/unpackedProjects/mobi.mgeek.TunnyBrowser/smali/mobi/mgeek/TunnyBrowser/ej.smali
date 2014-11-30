.class Lmobi/mgeek/TunnyBrowser/ej;
.super Ljava/lang/Object;
.source "ExitManager.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/ei;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ei;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ej;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ej;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/ei;->b(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ej;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/ei;->a(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->g(Landroid/content/Context;Z)V

    .line 158
    if-eqz p2, :cond_0

    const-string v0, "enable"

    .line 159
    :goto_0
    const-string v1, "exit"

    const-string v2, "clearhistory"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void

    .line 158
    :cond_0
    const-string v0, "disable"

    goto :goto_0
.end method
