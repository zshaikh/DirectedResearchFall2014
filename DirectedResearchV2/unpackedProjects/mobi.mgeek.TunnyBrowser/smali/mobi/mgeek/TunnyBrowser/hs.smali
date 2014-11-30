.class final Lmobi/mgeek/TunnyBrowser/hs;
.super Ljava/lang/Object;
.source "UpgradeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/hs;->a:Ljava/lang/String;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/hs;->b:Ljava/lang/String;

    iput-object p3, p0, Lmobi/mgeek/TunnyBrowser/hs;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hs;->a:Ljava/lang/String;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/hs;->b:Ljava/lang/String;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/hs;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/hq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void
.end method
