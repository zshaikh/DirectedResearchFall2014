.class public Lcom/fuse/ane/AirFuseAPI/functions/RegisterCurrencyFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    const-string v0, "Registering Currency"

    invoke-static {v0}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->registerCurrency(II)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Registering Currency illegal state"

    invoke-static {v1}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Registering Currency type mismatch"

    invoke-static {v1}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Registering Currency invalid object"

    invoke-static {v1}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "Registering Currency thread exception"

    invoke-static {v1}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_0
.end method
