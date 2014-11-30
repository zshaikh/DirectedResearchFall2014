.class Lmobi/mgeek/TunnyBrowser/cg;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserSettings;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserSettings;)V
    .locals 0

    .prologue
    .line 1620
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/cg;->a:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1625
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/q;->a()Lcom/dolphin/browser/ui/launcher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/q;->c()V

    .line 1626
    return-void
.end method
