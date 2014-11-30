.class Lc/a/a/h;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"

# interfaces
.implements Lc/a/a/g;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
