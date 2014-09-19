.class public Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinner$Show;
.super Ljava/lang/Object;
.source "LoadingSpinner.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Show"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .parameter "context"
    .parameter "args"

    .prologue
    .line 36
    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-static {v7}, Lcom/buffalostudios/aneutils/common/ANEArgument;->asInt(Lcom/adobe/fre/FREObject;)I

    move-result v1

    .line 37
    .local v1, screenX:I
    const/4 v7, 0x1

    aget-object v7, p2, v7

    invoke-static {v7}, Lcom/buffalostudios/aneutils/common/ANEArgument;->asInt(Lcom/adobe/fre/FREObject;)I

    move-result v2

    .line 38
    .local v2, screenY:I
    const/4 v7, 0x2

    aget-object v7, p2, v7

    invoke-static {v7}, Lcom/buffalostudios/aneutils/common/ANEArgument;->asInt(Lcom/adobe/fre/FREObject;)I

    move-result v3

    .line 39
    .local v3, backgroundColor:I
    const/4 v7, 0x3

    aget-object v7, p2, v7

    invoke-static {v7}, Lcom/buffalostudios/aneutils/common/ANEArgument;->asInt(Lcom/adobe/fre/FREObject;)I

    move-result v4

    .line 40
    .local v4, imageWidth:I
    const/4 v7, 0x4

    aget-object v7, p2, v7

    invoke-static {v7}, Lcom/buffalostudios/aneutils/common/ANEArgument;->asInt(Lcom/adobe/fre/FREObject;)I

    move-result v5

    .line 41
    .local v5, imageHeight:I
    const/4 v7, 0x5

    aget-object v7, p2, v7

    invoke-static {v7}, Lcom/buffalostudios/aneutils/common/ANEArgument;->asInts(Lcom/adobe/fre/FREObject;)[I

    move-result-object v6

    .line 43
    .local v6, imagePixels:[I
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 46
    .local v0, activity:Landroid/app/Activity;
    invoke-static/range {v0 .. v6}, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity;->start(Landroid/app/Activity;IIIII[I)V

    .line 49
    const/4 v7, 0x0

    return-object v7
.end method
