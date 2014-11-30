.class public Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;
.super Ljava/lang/Object;
.source "BaseResponse.java"


# instance fields
.field public code:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public errorMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_message"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
