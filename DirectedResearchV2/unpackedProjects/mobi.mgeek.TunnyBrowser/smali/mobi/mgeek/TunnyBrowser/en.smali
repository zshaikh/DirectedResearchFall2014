.class Lmobi/mgeek/TunnyBrowser/en;
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
    .line 188
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/en;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/en;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/ei;->b(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/en;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/ei;->a(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/Context;Z)V

    .line 194
    if-eqz p2, :cond_1

    const-string v0, "enable"

    .line 195
    :goto_1
    const-string v1, "exit"

    const-string v2, "noconfirm"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :cond_1
    const-string v0, "disable"

    goto :goto_1
.end method
