.class public Lcom/facebook/orca/share/ShareMedia;
.super Ljava/lang/Object;
.source "ShareMedia.java"

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
            "Lcom/facebook/orca/share/ShareMedia;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/facebook/orca/share/ShareMediaPhoto;

.field private final f:Lcom/facebook/orca/share/ShareMediaVideo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/facebook/orca/share/ShareMedia$1;

    invoke-direct {v0}, Lcom/facebook/orca/share/ShareMedia$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/share/ShareMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->a:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->b:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->c:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->d:Ljava/lang/String;

    .line 39
    const-class v0, Lcom/facebook/orca/share/ShareMediaPhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareMediaPhoto;

    iput-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->e:Lcom/facebook/orca/share/ShareMediaPhoto;

    .line 40
    const-class v0, Lcom/facebook/orca/share/ShareMediaVideo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareMediaVideo;

    iput-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->f:Lcom/facebook/orca/share/ShareMediaVideo;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/share/ShareMedia$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/facebook/orca/share/ShareMedia;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/share/ShareMediaBuilder;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaBuilder;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaBuilder;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->b:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaBuilder;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->c:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaBuilder;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->d:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaBuilder;->e()Lcom/facebook/orca/share/ShareMediaPhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->e:Lcom/facebook/orca/share/ShareMediaPhoto;

    .line 31
    invoke-virtual {p1}, Lcom/facebook/orca/share/ShareMediaBuilder;->f()Lcom/facebook/orca/share/ShareMediaVideo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->f:Lcom/facebook/orca/share/ShareMediaVideo;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/facebook/orca/share/ShareMediaPhoto;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->e:Lcom/facebook/orca/share/ShareMediaPhoto;

    return-object v0
.end method

.method public f()Lcom/facebook/orca/share/ShareMediaVideo;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->f:Lcom/facebook/orca/share/ShareMediaVideo;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->e:Lcom/facebook/orca/share/ShareMediaPhoto;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMedia;->f:Lcom/facebook/orca/share/ShareMediaVideo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    return-void
.end method
