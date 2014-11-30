.class public Lcom/gamesys/android/googleanalytics/fwk/NPEFunction;
.super Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;
.source "NPEFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ane/AbstractAneFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    .line 27
    const/4 v1, 0x0

    return-object v1
.end method

.method public trackMe()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
