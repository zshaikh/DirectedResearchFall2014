.class public Lam/sunrise/android/calendar/b/c;
.super Ljava/lang/Object;
.source "Benchmark.java"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lam/sunrise/android/calendar/b/c;->a:J

    .line 18
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 21
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->a()Lam/sunrise/android/calendar/SunriseApplication;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lam/sunrise/android/calendar/b/c;->a:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/d;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
