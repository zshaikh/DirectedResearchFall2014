.class Lmobi/mgeek/TunnyBrowser/bk;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/bj;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/bj;Z)V
    .locals 0

    .prologue
    .line 907
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bk;->b:Lmobi/mgeek/TunnyBrowser/bj;

    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/bk;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 912
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/o;->a()Lmobi/mgeek/util/CrashReporter/o;

    move-result-object v0

    iget-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/bk;->a:Z

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/bk;->b:Lmobi/mgeek/TunnyBrowser/bj;

    iget-object v2, v2, Lmobi/mgeek/TunnyBrowser/bj;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e013d

    invoke-virtual {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/util/CrashReporter/o;->a(ZLjava/lang/String;)V

    .line 918
    invoke-static {}, Lmobi/mgeek/util/CrashReporter/o;->a()Lmobi/mgeek/util/CrashReporter/o;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/util/CrashReporter/o;->b()J

    move-result-wide v0

    .line 921
    invoke-static {}, Lcom/dolphin/browser/util/dk;->a()Lcom/dolphin/browser/util/dk;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/dolphin/browser/util/dk;->b(J)V

    .line 923
    return-void
.end method
