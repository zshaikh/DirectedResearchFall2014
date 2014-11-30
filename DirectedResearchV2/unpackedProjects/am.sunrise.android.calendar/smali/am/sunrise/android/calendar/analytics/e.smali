.class public Lam/sunrise/android/calendar/analytics/e;
.super Lam/sunrise/android/calendar/analytics/d;
.source "AnalyticsRequestBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "user:app:opened"

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/analytics/d;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public a()Lam/sunrise/android/calendar/analytics/AnalyticsRequest;
    .locals 3

    .prologue
    .line 67
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 68
    const-string v1, "user:local:hour"

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lam/sunrise/android/calendar/analytics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    invoke-super {p0}, Lam/sunrise/android/calendar/analytics/d;->a()Lam/sunrise/android/calendar/analytics/AnalyticsRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lam/sunrise/android/calendar/analytics/e;
    .locals 1

    .prologue
    .line 61
    const-string v0, "user:id"

    invoke-virtual {p0, v0, p1}, Lam/sunrise/android/calendar/analytics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-object p0
.end method
