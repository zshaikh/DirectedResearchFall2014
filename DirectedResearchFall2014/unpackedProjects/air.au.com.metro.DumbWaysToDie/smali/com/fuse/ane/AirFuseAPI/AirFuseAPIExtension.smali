.class public Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v0, p0, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "LOGGING"

    invoke-virtual {v0, v1, p0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1

    new-instance v0, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtensionContext;

    invoke-direct {v0}, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtensionContext;-><init>()V

    sput-object v0, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->context:Lcom/adobe/fre/FREContext;

    sget-object v0, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->context:Lcom/adobe/fre/FREContext;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/fuse/ane/AirFuseAPI/AirFuseAPIExtension;->context:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
