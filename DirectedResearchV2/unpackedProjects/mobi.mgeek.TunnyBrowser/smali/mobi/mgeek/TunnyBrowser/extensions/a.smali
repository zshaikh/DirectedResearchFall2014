.class final Lmobi/mgeek/TunnyBrowser/extensions/a;
.super Ljava/lang/Object;
.source "Addon.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lmobi/mgeek/TunnyBrowser/extensions/Addon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmobi/mgeek/TunnyBrowser/extensions/Addon;Lmobi/mgeek/TunnyBrowser/extensions/Addon;)I
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p1}, Lmobi/mgeek/TunnyBrowser/extensions/Addon;->a()I

    move-result v0

    invoke-virtual {p2}, Lmobi/mgeek/TunnyBrowser/extensions/Addon;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 74
    check-cast p1, Lmobi/mgeek/TunnyBrowser/extensions/Addon;

    check-cast p2, Lmobi/mgeek/TunnyBrowser/extensions/Addon;

    invoke-virtual {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/extensions/a;->a(Lmobi/mgeek/TunnyBrowser/extensions/Addon;Lmobi/mgeek/TunnyBrowser/extensions/Addon;)I

    move-result v0

    return v0
.end method
