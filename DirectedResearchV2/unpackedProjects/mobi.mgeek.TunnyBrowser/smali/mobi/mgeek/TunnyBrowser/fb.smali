.class Lmobi/mgeek/TunnyBrowser/fb;
.super Ljava/lang/Object;
.source "FirstLauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fb;->a:Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fb;->a:Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->a(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;)Lcom/mgeek/android/util/e;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/mgeek/android/util/e;->b()V

    .line 63
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fb;->a:Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->b(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;)V

    .line 64
    return-void
.end method
