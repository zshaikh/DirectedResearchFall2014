.class public Lam/sunrise/android/calendar/api/models/responses/BaseResponse;
.super Ljava/lang/Object;
.source "BaseResponse.java"


# instance fields
.field public meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nextPage:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public syncToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method
