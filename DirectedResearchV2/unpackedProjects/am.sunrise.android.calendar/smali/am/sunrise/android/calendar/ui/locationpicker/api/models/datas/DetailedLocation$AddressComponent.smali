.class public Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;
.super Ljava/lang/Object;
.source "DetailedLocation.java"


# instance fields
.field public longName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "long_name"
    .end annotation
.end field

.field public shortName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_name"
    .end annotation
.end field

.field final synthetic this$0:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;

.field public types:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->this$0:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
