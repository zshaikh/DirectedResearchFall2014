.class public Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Utils;
.super Ljava/lang/Object;
.source "GraylogLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/concurrency/logging/GraylogLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# static fields
.field public static final NOT_DEFINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDefined(I)Z
    .locals 1
    .param p0, "property"    # I

    .prologue
    .line 28
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDefined(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "property"    # Ljava/lang/Object;

    .prologue
    .line 24
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
