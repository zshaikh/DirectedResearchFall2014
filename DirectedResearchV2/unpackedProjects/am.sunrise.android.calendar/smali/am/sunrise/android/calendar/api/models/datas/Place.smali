.class public Lam/sunrise/android/calendar/api/models/datas/Place;
.super Ljava/lang/Object;
.source "Place.java"


# instance fields
.field public address:Lam/sunrise/android/calendar/api/models/datas/Place$Address;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public geometry:Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public viewport:Lam/sunrise/android/calendar/api/models/datas/Place$Viewport;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method
