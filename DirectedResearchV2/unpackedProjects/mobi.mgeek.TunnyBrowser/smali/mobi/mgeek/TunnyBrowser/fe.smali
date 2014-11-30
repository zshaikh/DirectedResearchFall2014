.class Lmobi/mgeek/TunnyBrowser/fe;
.super Lmobi/mgeek/TunnyBrowser/fd;
.source "FirstLauncherActivity.java"


# instance fields
.field final synthetic b:Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;

.field private c:Landroid/view/View;

.field private d:Lcom/dolphin/browser/preload/ui/PreloadingView;


# direct methods
.method private constructor <init>(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;)V
    .locals 1

    .prologue
    .line 317
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fe;->b:Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmobi/mgeek/TunnyBrowser/fd;-><init>(Lmobi/mgeek/TunnyBrowser/fb;)V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;Lmobi/mgeek/TunnyBrowser/fb;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/fe;-><init>(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;)V

    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/fe;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/fe;->c()V

    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 351
    const-string v0, "App Start(First Start), from enter FirstLaunchActivity to click start button"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 353
    const-string v2, "launch"

    const-string v3, "first_launch_time"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v2, v3, v0, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 356
    const-string v0, "App Start(First Start), from click start button to exit FirstLaunchActivity"

    const/4 v1, 0x0

    invoke-static {v0, v5, v1}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;ZZ)Lcom/dolphin/browser/util/cw;

    .line 357
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fe;->b:Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;

    invoke-static {v0, v5}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->a(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;Z)Z

    .line 358
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fe;->d:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->b()V

    .line 359
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fe;->d:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->d()V

    .line 360
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fe;->b:Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->a()V

    .line 361
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fe;->d:Lcom/dolphin/browser/preload/ui/PreloadingView;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/preload/ui/PreloadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fe;->d:Lcom/dolphin/browser/preload/ui/PreloadingView;

    .line 327
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fe;->d:Lcom/dolphin/browser/preload/ui/PreloadingView;

    new-instance v1, Lcom/dolphin/browser/preload/ui/WelcomeView;

    invoke-direct {v1, p1}, Lcom/dolphin/browser/preload/ui/WelcomeView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(Landroid/view/View;)V

    .line 328
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fe;->d:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/ui/PreloadingView;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fe;->c:Landroid/view/View;

    .line 329
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fe;->c:Landroid/view/View;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/ff;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/ff;-><init>(Lmobi/mgeek/TunnyBrowser/fe;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fe;->d:Lcom/dolphin/browser/preload/ui/PreloadingView;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/fg;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/fg;-><init>(Lmobi/mgeek/TunnyBrowser/fe;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/preload/ui/PreloadingView;->a(Lcom/dolphin/browser/preload/ui/h;)V

    .line 343
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fe;->b:Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fe;->d:Lcom/dolphin/browser/preload/ui/PreloadingView;

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;->a(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;Lcom/dolphin/browser/preload/ui/PreloadingView;)Lcom/dolphin/browser/preload/ui/PreloadingView;

    .line 346
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fe;->d:Lcom/dolphin/browser/preload/ui/PreloadingView;

    return-object v0
.end method
