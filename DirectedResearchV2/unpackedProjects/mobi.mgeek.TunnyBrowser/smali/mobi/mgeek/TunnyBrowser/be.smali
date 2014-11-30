.class Lmobi/mgeek/TunnyBrowser/be;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 6978
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/be;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/be;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6982
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/be;->a:Ljava/io/File;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/be;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0, v1}, Lmobi/mgeek/util/CrashReporter/ac;->a(Ljava/io/File;Landroid/content/Context;)V

    .line 6983
    return-void
.end method
