.class public Lam/sunrise/android/calendar/analytics/d;
.super Ljava/lang/Object;
.source "AnalyticsRequestBuilder.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/analytics/AnalyticsRequest;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lam/sunrise/android/calendar/analytics/AnalyticsRequest;

    invoke-direct {v0}, Lam/sunrise/android/calendar/analytics/AnalyticsRequest;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/analytics/d;->a:Lam/sunrise/android/calendar/analytics/AnalyticsRequest;

    .line 39
    iget-object v0, p0, Lam/sunrise/android/calendar/analytics/d;->a:Lam/sunrise/android/calendar/analytics/AnalyticsRequest;

    iput-object p1, v0, Lam/sunrise/android/calendar/analytics/AnalyticsRequest;->name:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lam/sunrise/android/calendar/analytics/d;->a:Lam/sunrise/android/calendar/analytics/AnalyticsRequest;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lam/sunrise/android/calendar/analytics/AnalyticsRequest;->properties:Ljava/util/Map;

    .line 41
    return-void
.end method


# virtual methods
.method public a()Lam/sunrise/android/calendar/analytics/AnalyticsRequest;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lam/sunrise/android/calendar/analytics/d;->a:Lam/sunrise/android/calendar/analytics/AnalyticsRequest;

    iget-object v0, v0, Lam/sunrise/android/calendar/analytics/AnalyticsRequest;->properties:Ljava/util/Map;

    invoke-static {v0}, Lam/sunrise/android/calendar/analytics/f;->a(Ljava/util/Map;)V

    .line 49
    const-string v0, "user:ip"

    const-string v1, "use request"

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/analytics/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lam/sunrise/android/calendar/analytics/d;->a:Lam/sunrise/android/calendar/analytics/AnalyticsRequest;

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lam/sunrise/android/calendar/analytics/d;->a:Lam/sunrise/android/calendar/analytics/AnalyticsRequest;

    iget-object v0, v0, Lam/sunrise/android/calendar/analytics/AnalyticsRequest;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method
