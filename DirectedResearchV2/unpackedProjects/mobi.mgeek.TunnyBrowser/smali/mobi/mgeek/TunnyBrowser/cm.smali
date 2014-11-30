.class Lmobi/mgeek/TunnyBrowser/cm;
.super Ljava/lang/Object;
.source "BrowserYesNoPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/cm;->b:Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/cm;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cm;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/RestartActivity;->a(Landroid/content/Context;Z)V

    .line 118
    return-void
.end method
