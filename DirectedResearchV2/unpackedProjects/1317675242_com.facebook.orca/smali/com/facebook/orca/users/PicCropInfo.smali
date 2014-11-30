.class public Lcom/facebook/orca/users/PicCropInfo;
.super Ljava/lang/Object;
.source "PicCropInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/users/PicCropInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/facebook/orca/users/PicCropInfo$1;

    invoke-direct {v0}, Lcom/facebook/orca/users/PicCropInfo$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/PicCropInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/PicCropInfo;->a:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/PicCropInfo;->b:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/PicCropInfo;->c:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/PicCropInfo;->d:F

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/PicCropInfo;->e:F

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/users/PicCropInfo$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/PicCropInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIFFFF)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/orca/users/PicCropInfo;->a:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/facebook/orca/users/PicCropInfo;->b:I

    .line 34
    iput p3, p0, Lcom/facebook/orca/users/PicCropInfo;->c:I

    .line 35
    iput p4, p0, Lcom/facebook/orca/users/PicCropInfo;->d:F

    .line 36
    iput p5, p0, Lcom/facebook/orca/users/PicCropInfo;->e:F

    .line 37
    iput p6, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    .line 38
    iput p7, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    .line 39
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/users/PicCropInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/users/PicCropInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->c:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public e()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->d:F

    return v0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->e:F

    return v0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    return v0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    return v0
.end method

.method public i()Z
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    .line 84
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->d:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->d:F

    iget v1, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->e:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->e:F

    iget v1, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 93
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/orca/users/PicCropInfo;->d:F

    iget v2, p0, Lcom/facebook/orca/users/PicCropInfo;->e:F

    iget v3, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    iget v4, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/orca/users/PicCropInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 118
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 119
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 120
    iget v0, p0, Lcom/facebook/orca/users/PicCropInfo;->g:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 121
    return-void
.end method
