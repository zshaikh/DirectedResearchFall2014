.class public Lcom/bitrhymes/facebookext/FacebookExt;
.super Ljava/lang/Object;
.source "FacebookExt.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field private static PRINT_LOG:Ljava/lang/Boolean;

.field public static TAG:Ljava/lang/String;

.field public static context:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "FacebookExt"

    sput-object v0, Lcom/bitrhymes/facebookext/FacebookExt;->TAG:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/bitrhymes/facebookext/FacebookExt;->PRINT_LOG:Ljava/lang/Boolean;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lcom/bitrhymes/facebookext/FacebookExt;->PRINT_LOG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/bitrhymes/facebookext/FacebookExt;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    sget-object v0, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 31
    sget-object v0, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "LOGGING"

    invoke-virtual {v0, v1, p0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_1
    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1
    .param p1, "extId"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v0, Lcom/bitrhymes/facebookext/FacebookExtContext;

    invoke-direct {v0}, Lcom/bitrhymes/facebookext/FacebookExtContext;-><init>()V

    sput-object v0, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    .line 21
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
