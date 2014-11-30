.class final Lmobi/mgeek/TunnyBrowser/extensions/b;
.super Ljava/lang/Object;
.source "DolphinPackage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;)I
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p1}, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 178
    check-cast p1, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;

    check-cast p2, Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;

    invoke-virtual {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/extensions/b;->a(Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;Lmobi/mgeek/TunnyBrowser/extensions/DolphinPackage;)I

    move-result v0

    return v0
.end method
