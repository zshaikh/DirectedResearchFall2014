.class public Lmobi/mgeek/TunnyBrowser/hz;
.super Ljava/lang/Object;
.source "WebStorageSizeManager.java"

# interfaces
.implements Lmobi/mgeek/TunnyBrowser/hy;


# instance fields
.field private a:Landroid/os/StatFs;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/hz;->a:Landroid/os/StatFs;

    .line 121
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hz;->a:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/hz;->a:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hz;->a:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/hz;->a:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method
