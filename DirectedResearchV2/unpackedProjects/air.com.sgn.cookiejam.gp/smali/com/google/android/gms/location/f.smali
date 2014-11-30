.class public Lcom/google/android/gms/location/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/g;


# instance fields
.field private final kg:I

.field private final xJ:Ljava/lang/String;

.field private final xr:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/g;

    invoke-direct {v0}, Lcom/google/android/gms/location/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/f;->CREATOR:Lcom/google/android/gms/location/g;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/f;->kg:I

    iput-object p2, p0, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dB()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public dC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/f;->CREATOR:Lcom/google/android/gms/location/g;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/f;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    iget-object v1, p1, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/f;->kg:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/f;->xr:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/location/f;->xJ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/location/f;->CREATOR:Lcom/google/android/gms/location/g;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/g;->a(Lcom/google/android/gms/location/f;Landroid/os/Parcel;I)V

    return-void
.end method
