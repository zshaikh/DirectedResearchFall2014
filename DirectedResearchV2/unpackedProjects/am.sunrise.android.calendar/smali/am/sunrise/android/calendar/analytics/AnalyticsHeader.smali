.class public Lam/sunrise/android/calendar/analytics/AnalyticsHeader;
.super Ljava/lang/Object;
.source "AnalyticsHeader.java"


# instance fields
.field properties:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/analytics/AnalyticsHeader;->properties:Ljava/util/Map;

    .line 23
    return-void
.end method

.method public static create()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lam/sunrise/android/calendar/analytics/AnalyticsHeader;

    invoke-direct {v0}, Lam/sunrise/android/calendar/analytics/AnalyticsHeader;-><init>()V

    .line 27
    iget-object v1, v0, Lam/sunrise/android/calendar/analytics/AnalyticsHeader;->properties:Ljava/util/Map;

    invoke-static {v1}, Lam/sunrise/android/calendar/analytics/f;->a(Ljava/util/Map;)V

    .line 28
    iget-object v0, v0, Lam/sunrise/android/calendar/analytics/AnalyticsHeader;->properties:Ljava/util/Map;

    invoke-static {v0}, Lam/sunrise/android/calendar/analytics/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
