.class public Lcom/buffalostudios/aneutils/ANEUtils$GetError;
.super Ljava/lang/Object;
.source "ANEUtils.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buffalostudios/aneutils/ANEUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetError"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 25
    invoke-static {}, Lcom/buffalostudios/aneutils/common/ANEHelper;->getError()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "error":Ljava/lang/String;
    invoke-static {v0}, Lcom/buffalostudios/aneutils/common/ANEHelper;->newFREString(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    return-object v1
.end method
