.class public Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field private static PRINT_LOG:Ljava/lang/Boolean;

.field private static TAG:Ljava/lang/String;

.field public static context:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AirChartboost"

    sput-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->PRINT_LOG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->PRINT_LOG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "LOGGING"

    invoke-virtual {v0, v1, p0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1

    new-instance v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtensionContext;

    invoke-direct {v0}, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtensionContext;-><init>()V

    sput-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/freshplanet/ane/AirChartboost/AirChartboostExtension;->context:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
