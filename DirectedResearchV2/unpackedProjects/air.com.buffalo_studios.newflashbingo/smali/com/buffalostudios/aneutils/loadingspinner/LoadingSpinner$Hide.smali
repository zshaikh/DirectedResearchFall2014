.class public Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinner$Hide;
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
    name = "Hide"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 25
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinnerActivity;->stop(Landroid/app/Activity;)V

    .line 27
    const/4 v1, 0x0

    return-object v1
.end method
