.class public Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;
.super Ljava/lang/Object;
.source "DetailedLocation.java"


# instance fields
.field public addressComponents:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address_components"
    .end annotation
.end field

.field public formatedAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "formatted_address"
    .end annotation
.end field

.field public geometry:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public reference:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public types:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public vicinity:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method
