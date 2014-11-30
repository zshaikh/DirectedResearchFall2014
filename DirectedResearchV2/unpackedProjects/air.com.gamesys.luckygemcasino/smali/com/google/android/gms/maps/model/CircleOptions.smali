.class public final Lcom/google/android/gms/maps/model/CircleOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/CircleOptionsCreator;


# instance fields
.field private final W:I

.field private gO:Lcom/google/android/gms/maps/model/LatLng;

.field private gP:D

.field private gQ:F

.field private gR:I

.field private gS:I

.field private gT:F

.field private gU:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/CircleOptionsCreator;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CircleOptionsCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Lcom/google/android/gms/maps/model/CircleOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gO:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gP:D

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gQ:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gR:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gS:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gT:F

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gU:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->W:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;DFIIFZ)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p3, "radius"    # D
    .param p5, "strokeWidth"    # F
    .param p6, "strokeColor"    # I
    .param p7, "fillColor"    # I
    .param p8, "zIndex"    # F
    .param p9, "visible"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gO:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gP:D

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gQ:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gR:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gS:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gT:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gU:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->W:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gO:Lcom/google/android/gms/maps/model/LatLng;

    iput-wide p3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gP:D

    iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gQ:F

    iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gR:I

    iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gS:I

    iput p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gT:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gU:Z

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->W:I

    return v0
.end method

.method public center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .param p1, "center"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gO:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gS:I

    return-object p0
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gO:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gS:I

    return v0
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gP:D

    return-wide v0
.end method

.method public getStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gR:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gQ:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gT:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gU:Z

    return v0
.end method

.method public radius(D)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .param p1, "radius"    # D

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gP:D

    return-object p0
.end method

.method public strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gR:I

    return-object p0
.end method

.method public strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .param p1, "width"    # F

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gQ:F

    return-object p0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gU:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/dh;->bm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/dj;->a(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/CircleOptionsCreator;->a(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .param p1, "zIndex"    # F

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->gT:F

    return-object p0
.end method
