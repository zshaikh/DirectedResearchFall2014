.class public Lcom/freshplanet/flurry/Extension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static TAG:Ljava/lang/String;

.field public static context:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AirFlurry"

    sput-object v0, Lcom/freshplanet/flurry/Extension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1

    new-instance v0, Lcom/freshplanet/flurry/ExtensionContext;

    invoke-direct {v0}, Lcom/freshplanet/flurry/ExtensionContext;-><init>()V

    sput-object v0, Lcom/freshplanet/flurry/Extension;->context:Lcom/adobe/fre/FREContext;

    sget-object v0, Lcom/freshplanet/flurry/Extension;->context:Lcom/adobe/fre/FREContext;

    return-object v0
.end method

.method public dispose()V
    .locals 2

    sget-object v0, Lcom/freshplanet/flurry/Extension;->TAG:Ljava/lang/String;

    const-string v1, "Extension disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/freshplanet/flurry/Extension;->context:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public initialize()V
    .locals 2

    sget-object v0, Lcom/freshplanet/flurry/Extension;->TAG:Ljava/lang/String;

    const-string v1, "Extension initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
