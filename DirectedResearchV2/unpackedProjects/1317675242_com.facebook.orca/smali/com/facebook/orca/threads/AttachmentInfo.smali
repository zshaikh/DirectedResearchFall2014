.class public Lcom/facebook/orca/threads/AttachmentInfo;
.super Ljava/lang/Object;
.source "AttachmentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/facebook/orca/threads/AttachmentInfo$1;

    invoke-direct {v0}, Lcom/facebook/orca/threads/AttachmentInfo$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/AttachmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->a:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->b:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->d:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->e:I

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/threads/AttachmentInfo$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/orca/threads/AttachmentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/threads/AttachmentInfoBuilder;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->b()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->b:I

    .line 27
    invoke-virtual {p1}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->c:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->d:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->e()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->e:I

    .line 30
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->e:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget v0, p0, Lcom/facebook/orca/threads/AttachmentInfo;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return-void
.end method
