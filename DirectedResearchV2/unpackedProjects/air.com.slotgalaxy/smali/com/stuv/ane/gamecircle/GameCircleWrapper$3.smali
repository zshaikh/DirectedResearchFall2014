.class Lcom/stuv/ane/gamecircle/GameCircleWrapper$3;
.super Ljava/lang/Object;
.source "GameCircleWrapper.java"

# interfaces
.implements Lcom/amazon/ags/api/AGResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/gamecircle/GameCircleWrapper;->updateAchievement(Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/ags/api/AGResponseCallback",
        "<",
        "Lcom/amazon/ags/api/achievements/UpdateProgressResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/amazon/ags/api/RequestResponse;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/amazon/ags/api/achievements/UpdateProgressResponse;

    invoke-virtual {p0, p1}, Lcom/stuv/ane/gamecircle/GameCircleWrapper$3;->onComplete(Lcom/amazon/ags/api/achievements/UpdateProgressResponse;)V

    return-void
.end method

.method public onComplete(Lcom/amazon/ags/api/achievements/UpdateProgressResponse;)V
    .locals 0
    .param p1, "result"    # Lcom/amazon/ags/api/achievements/UpdateProgressResponse;

    .prologue
    .line 203
    invoke-interface {p1}, Lcom/amazon/ags/api/achievements/UpdateProgressResponse;->isError()Z

    .line 212
    return-void
.end method
