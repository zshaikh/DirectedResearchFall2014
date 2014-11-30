.class public Lcom/gamesys/android/somoapptimiser/ane/TrackSaleFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "TrackSaleFunction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/gamesys/android/somoapptimiser/ane/TrackSaleFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/somoapptimiser/ane/TrackSaleFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 27
    move-object v0, p1

    check-cast v0, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;

    .line 29
    .local v0, "ctx":Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;
    const/4 v3, 0x0

    .line 30
    .local v3, "result":Lcom/adobe/fre/FREObject;
    invoke-virtual {v0}, Lcom/gamesys/android/somoapptimiser/ane/SomoApptimiserContext;->trackSale()Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "res":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 37
    :goto_0
    return-object v3

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v4, Lcom/gamesys/android/somoapptimiser/ane/TrackSaleFunction;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to convert the result <"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> into a FRE object"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
