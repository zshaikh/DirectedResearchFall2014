.class public Lcom/buffalostudios/aneutils/loadingspinner/LoadingSpinner$Init;
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
    name = "Init"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1
    .parameter "context"
    .parameter "args"

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method
