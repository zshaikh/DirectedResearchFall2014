.class public Lcom/facebook/orca/location/LocationCache;
.super Ljava/lang/Object;
.source "LocationCache.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:J


# instance fields
.field private volatile b:Lcom/facebook/orca/location/LocationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    const-wide/16 v0, 0x5

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/location/LocationCache;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/location/LocationResult;
    .locals 4

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/location/LocationCache;->b:Lcom/facebook/orca/location/LocationResult;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/orca/location/LocationCache;->b:Lcom/facebook/orca/location/LocationResult;

    invoke-virtual {v2}, Lcom/facebook/orca/location/LocationResult;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/orca/location/LocationCache;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/location/LocationCache;->b:Lcom/facebook/orca/location/LocationResult;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/location/LocationCache;->b:Lcom/facebook/orca/location/LocationResult;

    return-object v0
.end method

.method public a(Lcom/facebook/orca/location/LocationResult;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/facebook/orca/location/LocationCache;->b:Lcom/facebook/orca/location/LocationResult;

    .line 29
    return-void
.end method
