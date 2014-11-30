.class Lcom/stuv/ane/aarki/extensions/AarkiWrapper$1;
.super Ljava/lang/Object;
.source "AarkiWrapper.java"

# interfaces
.implements Lcom/aarki/Aarki$AarkiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/aarki/extensions/AarkiWrapper;->showOfferWall(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFinished(Lcom/aarki/Aarki$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/aarki/Aarki$Status;

    .prologue
    .line 64
    return-void
.end method
