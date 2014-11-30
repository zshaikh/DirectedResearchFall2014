.class public Lcom/playtika/extensions/PlatilibExtension;
.super Ljava/lang/Object;
.source "PlatilibExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field static final CONTEXT_ACTIVITY_CALLBACK:Ljava/lang/String; = "context_activity_callback"

.field static final CONTEXT_ADX:Ljava/lang/String; = "adx_context"

.field static final CONTEXT_AMAZON_PAYMENT:Ljava/lang/String; = "amazon_payment_context"

.field static final CONTEXT_APPOXEE:Ljava/lang/String; = "appoxee_context"

.field static final CONTEXT_CHARTBOOST:Ljava/lang/String; = "context_chartboost"

.field static final CONTEXT_FBSDK:Ljava/lang/String; = "fbsdk_context"

.field static final CONTEXT_FLURRY:Ljava/lang/String; = "flurry_context"

.field static final CONTEXT_GOOGLE_ANALYSTIC:Ljava/lang/String; = "context_google_analytics"

.field static final CONTEXT_GRAYLOG:Ljava/lang/String; = "context_graylog"

.field static final CONTEXT_LOCAL_NOTIFICATIONS:Ljava/lang/String; = "context_local_notifications"

.field static final CONTEXT_PAYMENT:Ljava/lang/String; = "payment_context"

.field static final CONTEXT_PAYPAL_PAYMENT:Ljava/lang/String; = "paypal_payment_context"

.field static final CONTEXT_PLAYHAVEN:Ljava/lang/String; = "playhaven_context"

.field static final CONTEXT_RUNTIME_VARIABLES:Ljava/lang/String; = "runtime_variables_context"

.field static final CONTEXT_SCREEN_LISTENER:Ljava/lang/String; = "screen_listener_context"

.field static final CONTEXT_TOOLS:Ljava/lang/String; = "tools_context"

.field static final CONTEXT_ZIP_DOWNLOADER:Ljava/lang/String; = "zip_downloader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 2
    .param p1, "contextType"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "context":Lcom/adobe/fre/FREContext;
    const-string v1, "context_activity_callback"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v0, Lcom/playtika/extensions/ActivityCallbackContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/ActivityCallbackContext;-><init>()V

    .line 47
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_0
    const-string v1, "adx_context"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    new-instance v0, Lcom/playtika/extensions/adx/AdxExtensionContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/adx/AdxExtensionContext;-><init>()V

    .line 49
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_1
    const-string v1, "amazon_payment_context"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    new-instance v0, Lcom/playtika/extensions/amazon/AmazonExtensionContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;-><init>()V

    .line 51
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_2
    const-string v1, "appoxee_context"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    new-instance v0, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;-><init>()V

    .line 53
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_3
    const-string v1, "context_chartboost"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    new-instance v0, Lcom/playtika/extensions/chartboost/ChartboostContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/chartboost/ChartboostContext;-><init>()V

    .line 55
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_4
    const-string v1, "fbsdk_context"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    new-instance v0, Lcom/playtika/extensions/fbsdk/FbSdkContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/fbsdk/FbSdkContext;-><init>()V

    .line 57
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_5
    const-string v1, "flurry_context"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 58
    new-instance v0, Lcom/playtika/extensions/flurry/FlurryExtensionContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/flurry/FlurryExtensionContext;-><init>()V

    .line 59
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_6
    const-string v1, "context_google_analytics"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 60
    new-instance v0, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/googleanalytics/GoogleAnalyticsContext;-><init>()V

    .line 61
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_7
    const-string v1, "context_graylog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 62
    new-instance v0, Lcom/playtika/extensions/concurrency/logging/GraylogContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/concurrency/logging/GraylogContext;-><init>()V

    .line 63
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_8
    const-string v1, "context_local_notifications"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 64
    new-instance v0, Lcom/playtika/extensions/notifications/LocalNotificationsContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/notifications/LocalNotificationsContext;-><init>()V

    .line 65
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_9
    const-string v1, "payment_context"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 66
    new-instance v0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;-><init>()V

    .line 67
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_a
    const-string v1, "paypal_payment_context"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 68
    new-instance v0, Lcom/playtika/extensions/paypal/PaypalExtensionContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/paypal/PaypalExtensionContext;-><init>()V

    .line 69
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_b
    const-string v1, "playhaven_context"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 70
    new-instance v0, Lcom/playtika/extensions/playhaven/PlayHavenContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/playhaven/PlayHavenContext;-><init>()V

    .line 71
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_c
    const-string v1, "runtime_variables_context"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 72
    sget-object v0, Lcom/playtika/extensions/data/RuntimeVariablesContext;->INSTANCE:Lcom/playtika/extensions/data/RuntimeVariablesContext;

    .line 73
    :cond_d
    const-string v1, "screen_listener_context"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 74
    new-instance v0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;-><init>()V

    .line 75
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_e
    const-string v1, "tools_context"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 76
    new-instance v0, Lcom/playtika/extensions/tools/ToolsExtensionContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/tools/ToolsExtensionContext;-><init>()V

    .line 77
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_f
    const-string v1, "zip_downloader"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 78
    new-instance v0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;

    .end local v0    # "context":Lcom/adobe/fre/FREContext;
    invoke-direct {v0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloaderContext;-><init>()V

    .line 80
    .restart local v0    # "context":Lcom/adobe/fre/FREContext;
    :cond_10
    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
