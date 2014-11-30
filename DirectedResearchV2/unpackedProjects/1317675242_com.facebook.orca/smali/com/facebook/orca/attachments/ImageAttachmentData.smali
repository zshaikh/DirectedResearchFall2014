.class public Lcom/facebook/orca/attachments/ImageAttachmentData;
.super Ljava/lang/Object;
.source "ImageAttachmentData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/attachments/ImageAttachmentData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/orca/attachments/ImageAttachmentData$1;

    invoke-direct {v0}, Lcom/facebook/orca/attachments/ImageAttachmentData$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/attachments/ImageAttachmentData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/facebook/orca/attachments/ImageAttachmentData;->a:Landroid/net/Uri;

    .line 21
    iput-object p2, p0, Lcom/facebook/orca/attachments/ImageAttachmentData;->b:Landroid/net/Uri;

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/orca/attachments/ImageAttachmentData;->a:Landroid/net/Uri;

    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/orca/attachments/ImageAttachmentData;->b:Landroid/net/Uri;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/attachments/ImageAttachmentData$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/ImageAttachmentData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/attachments/ImageAttachmentData;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/attachments/ImageAttachmentData;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/attachments/ImageAttachmentData;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/attachments/ImageAttachmentData;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    return-void
.end method
