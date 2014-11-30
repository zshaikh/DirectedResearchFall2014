.class Lmobi/mgeek/TunnyBrowser/ep;
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
    .line 211
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ep;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 224
    const-string v0, "exit"

    const-string v1, "clickbtn"

    const-string v2, "minimize"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ep;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/ei;->a(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->moveTaskToBack(Z)Z

    .line 227
    return-void
.end method
