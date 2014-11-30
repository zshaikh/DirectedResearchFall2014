.class final Lam/sunrise/android/calendar/api/b;
.super Ljava/lang/Object;
.source "SunriseClient.java"

# interfaces
.implements Lretrofit/RequestInterceptor;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .locals 2

    .prologue
    .line 76
    if-eqz p1, :cond_1

    .line 77
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const-string v1, "User-TimeZone"

    invoke-interface {p1, v1, v0}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    const-string v0, "User-Info"

    invoke-static {}, Lam/sunrise/android/calendar/analytics/AnalyticsHeader;->create()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    return-void
.end method
