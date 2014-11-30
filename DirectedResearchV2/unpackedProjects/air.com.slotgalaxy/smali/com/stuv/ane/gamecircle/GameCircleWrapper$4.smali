.class Lcom/stuv/ane/gamecircle/GameCircleWrapper$4;
.super Ljava/lang/Object;
.source "GameCircleWrapper.java"

# interfaces
.implements Lcom/amazon/ags/api/AGResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/gamecircle/GameCircleWrapper;->submitScore(Ljava/lang/String;Ljava/lang/Double;)V
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
        "Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/amazon/ags/api/RequestResponse;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;

    invoke-virtual {p0, p1}, Lcom/stuv/ane/gamecircle/GameCircleWrapper$4;->onComplete(Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;)V

    return-void
.end method

.method public onComplete(Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;)V
    .locals 0
    .param p1, "result"    # Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;

    .prologue
    .line 235
    invoke-interface {p1}, Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;->isError()Z

    .line 244
    return-void
.end method
