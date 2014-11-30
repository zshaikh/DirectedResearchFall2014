.class public interface abstract Lam/sunrise/android/calendar/analytics/b;
.super Ljava/lang/Object;
.source "AnalyticsClient.java"


# virtual methods
.method public abstract a(Lam/sunrise/android/calendar/analytics/AnalyticsRequest;)Lretrofit/client/Response;
    .param p1    # Lam/sunrise/android/calendar/analytics/AnalyticsRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/track"
    .end annotation
.end method
