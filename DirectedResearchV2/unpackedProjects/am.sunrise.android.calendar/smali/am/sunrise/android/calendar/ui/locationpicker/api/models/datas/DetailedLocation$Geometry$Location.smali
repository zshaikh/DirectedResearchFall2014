.class public Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;
.super Ljava/lang/Object;
.source "DetailedLocation.java"


# instance fields
.field public lat:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public lng:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$1:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;->this$1:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
