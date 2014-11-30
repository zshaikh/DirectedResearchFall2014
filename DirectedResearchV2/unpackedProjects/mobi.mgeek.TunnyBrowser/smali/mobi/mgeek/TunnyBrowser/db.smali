.class Lmobi/mgeek/TunnyBrowser/db;
.super Ljava/lang/Object;
.source "DeferredTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/cz;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/cz;Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/db;->b:Lmobi/mgeek/TunnyBrowser/cz;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/db;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 189
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/o;->a()Lmobi/mgeek/util/CrashReporter/o;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/db;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e013d

    invoke-virtual {v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/util/CrashReporter/o;->a(Ljava/lang/String;)V

    .line 193
    return-void
.end method
