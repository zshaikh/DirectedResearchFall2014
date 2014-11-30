.class public Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;
.super Lam/sunrise/android/calendar/api/models/responses/BaseResponse;
.source "ArrayResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DATA:",
        "Ljava/lang/Object;",
        ">",
        "Lam/sunrise/android/calendar/api/models/responses/BaseResponse;"
    }
.end annotation


# instance fields
.field public data:[Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TDATA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lam/sunrise/android/calendar/api/models/responses/BaseResponse;-><init>()V

    return-void
.end method
