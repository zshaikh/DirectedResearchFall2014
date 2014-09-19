.class public Lcom/buffalostudios/aneutils/ANEContext;
.super Lcom/adobe/fre/FREContext;
.source "ANEContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ANEContext"

.field private static instance:Lcom/buffalostudios/aneutils/ANEContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/buffalostudios/aneutils/ANEContext;->instance:Lcom/buffalostudios/aneutils/ANEContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 23
    sput-object p0, Lcom/buffalostudios/aneutils/ANEContext;->instance:Lcom/buffalostudios/aneutils/ANEContext;

    .line 24
    return-void
.end method

.method public static dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "eventId"
    .parameter "eventData"

    .prologue
    .line 31
    const-string v0, "ANEContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dispatch->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object v0, Lcom/buffalostudios/aneutils/ANEContext;->instance:Lcom/buffalostudios/aneutils/ANEContext;

    invoke-virtual {v0, p0, p1}, Lcom/buffalostudios/aneutils/ANEContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static getFREContext()Lcom/buffalostudios/aneutils/ANEContext;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/buffalostudios/aneutils/ANEContext;->instance:Lcom/buffalostudios/aneutils/ANEContext;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, functionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "aneUtilsGetError"

    new-instance v2, Lcom/buffalostudios/aneutils/ANEUtils$GetError;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/ANEUtils$GetError;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "aneUtilsSetInForeground"

    new-instance v2, Lcom/buffalostudios/aneutils/ANEUtils$SetInForeground;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/ANEUtils$SetInForeground;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "bitmapUtilInit"

    new-instance v2, Lcom/buffalostudios/aneutils/bitmaputil/BitmapUtil$Init;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/bitmaputil/BitmapUtil$Init;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "bitmapUtilCompress"

    new-instance v2, Lcom/buffalostudios/aneutils/bitmaputil/BitmapUtil$Compress;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/bitmaputil/BitmapUtil$Compress;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "bitmapUtilUncompress"

    new-instance v2, Lcom/buffalostudios/aneutils/bitmaputil/BitmapUtil$Uncompress;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/bitmaputil/BitmapUtil$Uncompress;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "deviceInfoInit"

    new-instance v2, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$Init;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$Init;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "deviceInfoGetBuildProperty"

    new-instance v2, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetBuildProperty;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetBuildProperty;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "deviceInfoGetDisplayProperty"

    new-instance v2, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetDisplayProperty;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "deviceInfoGetFingerprintProperty"

    new-instance v2, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetFingerprintProperty;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetFingerprintProperty;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "deviceInfoGetNetworkProperty"

    new-instance v2, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetNetworkProperty;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetNetworkProperty;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "deviceInfoGetTelephonyProperty"

    new-instance v2, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetTelephonyProperty;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/deviceinfo/DeviceInfo$GetTelephonyProperty;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "globalErrorInit"

    new-instance v2, Lcom/buffalostudios/aneutils/globalerror/GlobalError$Init;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/globalerror/GlobalError$Init;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "loadingSpinnerInit"

    new-instance v2, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinner$Init;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinner$Init;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "loadingSpinnerHide"

    new-instance v2, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinner$Hide;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinner$Hide;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "loadingSpinnerShow"

    new-instance v2, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinner$Show;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinner$Show;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "localNotifierInit"

    new-instance v2, Lcom/buffalostudios/aneutils/notifier/LocalNotifier$Init;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/notifier/LocalNotifier$Init;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "localNotifierCancelNotification"

    new-instance v2, Lcom/buffalostudios/aneutils/notifier/LocalNotifier$CancelNotification;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/notifier/LocalNotifier$CancelNotification;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "localNotifierScheduleNotification"

    new-instance v2, Lcom/buffalostudios/aneutils/notifier/LocalNotifier$ScheduleNotification;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/notifier/LocalNotifier$ScheduleNotification;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "localNotifierScheduleNotificationRepeating"

    new-instance v2, Lcom/buffalostudios/aneutils/notifier/LocalNotifier$ScheduleNotificationRepeating;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/notifier/LocalNotifier$ScheduleNotificationRepeating;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "pushNotifierInit"

    new-instance v2, Lcom/buffalostudios/aneutils/notifier/PushNotifier$Init;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/notifier/PushNotifier$Init;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "pushNotifierInitGCM"

    new-instance v2, Lcom/buffalostudios/aneutils/notifier/PushNotifier$InitGCM;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/notifier/PushNotifier$InitGCM;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "pushNotifierIsGCMAvailable"

    new-instance v2, Lcom/buffalostudios/aneutils/notifier/PushNotifier$IsGCMAvailable;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/notifier/PushNotifier$IsGCMAvailable;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "pushNotifierIsGCMRegistered"

    new-instance v2, Lcom/buffalostudios/aneutils/notifier/PushNotifier$IsGCMRegistered;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/notifier/PushNotifier$IsGCMRegistered;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "pushNotifierIsGCMRegisteredOnServer"

    new-instance v2, Lcom/buffalostudios/aneutils/notifier/PushNotifier$IsGCMRegisteredOnServer;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/notifier/PushNotifier$IsGCMRegisteredOnServer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "pushNotifierSetGCMRegisteredOnServer"

    new-instance v2, Lcom/buffalostudios/aneutils/notifier/PushNotifier$SetGCMRegisteredOnServer;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/notifier/PushNotifier$SetGCMRegisteredOnServer;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "pushNotifierUnregisterGCM"

    new-instance v2, Lcom/buffalostudios/aneutils/notifier/PushNotifier$UnregisterGCM;

    invoke-direct {v2}, Lcom/buffalostudios/aneutils/notifier/PushNotifier$UnregisterGCM;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object v0
.end method
