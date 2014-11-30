.class public final Lcom/google/android/gms/internal/gv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/gw;


# instance fields
.field final kg:I

.field private final yl:Lcom/google/android/gms/location/LocationRequest;

.field private final ym:Lcom/google/android/gms/internal/gt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gv;->CREATOR:Lcom/google/android/gms/internal/gw;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/internal/gt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/gv;->kg:I

    iput-object p2, p0, Lcom/google/android/gms/internal/gv;->yl:Lcom/google/android/gms/location/LocationRequest;

    iput-object p3, p0, Lcom/google/android/gms/internal/gv;->ym:Lcom/google/android/gms/internal/gt;

    return-void
.end method


# virtual methods
.method public dS()Lcom/google/android/gms/location/LocationRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gv;->yl:Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method

.method public dT()Lcom/google/android/gms/internal/gt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gv;->ym:Lcom/google/android/gms/internal/gt;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gv;->CREATOR:Lcom/google/android/gms/internal/gw;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/gv;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/gv;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/internal/gv;->yl:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p1, Lcom/google/android/gms/internal/gv;->yl:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/gv;->ym:Lcom/google/android/gms/internal/gt;

    iget-object v1, p1, Lcom/google/android/gms/internal/gv;->ym:Lcom/google/android/gms/internal/gt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/gv;->yl:Lcom/google/android/gms/location/LocationRequest;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/gv;->ym:Lcom/google/android/gms/internal/gt;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ee;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ee;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "locationRequest"

    iget-object v2, p0, Lcom/google/android/gms/internal/gv;->yl:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    const-string v1, "filter"

    iget-object v2, p0, Lcom/google/android/gms/internal/gv;->ym:Lcom/google/android/gms/internal/gt;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ee$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ee$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/gv;->CREATOR:Lcom/google/android/gms/internal/gw;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/gv;Landroid/os/Parcel;I)V

    return-void
.end method
