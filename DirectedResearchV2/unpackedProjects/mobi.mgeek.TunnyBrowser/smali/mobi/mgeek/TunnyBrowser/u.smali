.class Lmobi/mgeek/TunnyBrowser/u;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/t;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/t;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/u;->b:Lmobi/mgeek/TunnyBrowser/t;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/u;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/u;->b:Lmobi/mgeek/TunnyBrowser/t;

    iget-object v0, v0, Lmobi/mgeek/TunnyBrowser/t;->b:Lmobi/mgeek/TunnyBrowser/Browser;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/u;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/Browser;->a(Lmobi/mgeek/TunnyBrowser/Browser;Ljava/lang/String;)V

    .line 552
    return-void
.end method
