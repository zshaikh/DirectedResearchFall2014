.class Lmobi/mgeek/TunnyBrowser/d;
.super Ljava/lang/Object;
.source "AboutPageManager.java"


# static fields
.field private static a:Lmobi/mgeek/TunnyBrowser/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lmobi/mgeek/TunnyBrowser/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/mgeek/TunnyBrowser/b;-><init>(Lmobi/mgeek/TunnyBrowser/c;)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/d;->a:Lmobi/mgeek/TunnyBrowser/b;

    return-void
.end method

.method static synthetic a()Lmobi/mgeek/TunnyBrowser/b;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lmobi/mgeek/TunnyBrowser/d;->a:Lmobi/mgeek/TunnyBrowser/b;

    return-object v0
.end method
