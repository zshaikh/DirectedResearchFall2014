.class public Lcom/bitrhymes/nativeutils/localnotify/AndroidInitFunction;
.super Ljava/lang/Object;
.source "AndroidInitFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 13
    move-object v0, p1

    check-cast v0, Lcom/bitrhymes/nativeutils/NativeUtilsContext;

    move-object v2, v0

    .line 14
    .local v2, "adec":Lcom/bitrhymes/nativeutils/NativeUtilsContext;
    invoke-virtual {v2}, Lcom/bitrhymes/nativeutils/NativeUtilsContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 15
    .local v1, "activity":Landroid/app/Activity;
    iput-object v1, v2, Lcom/bitrhymes/nativeutils/NativeUtilsContext;->activity:Landroid/app/Activity;

    .line 16
    const/4 v3, 0x0

    return-object v3
.end method
