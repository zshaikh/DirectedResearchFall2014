.class public final Lcom/vungle/sdk/ad;
.super Lcom/vungle/sdk/ah;
.source "vungle"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vungle/sdk/ad;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/vungle/sdk/ad$1;

    invoke-direct {v0}, Lcom/vungle/sdk/ad$1;-><init>()V

    sput-object v0, Lcom/vungle/sdk/ad;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vungle/sdk/ah;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vungle/sdk/ah;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/vungle/sdk/ad;->c:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/vungle/sdk/ae;->a()Lcom/vungle/sdk/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/ah;->b:Lcom/vungle/sdk/ak;

    .line 15
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Parcel;)Lcom/vungle/sdk/ad;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/ad;->c:Ljava/lang/String;

    .line 54
    invoke-super {p0, p1}, Lcom/vungle/sdk/ah;->b(Landroid/os/Parcel;)Lcom/vungle/sdk/ah;

    .line 55
    return-object p0
.end method

.method protected final a()Lcom/vungle/sdk/ah$b;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vungle/sdk/ah$b;->a:Lcom/vungle/sdk/ah$b;

    return-object v0
.end method

.method protected final b()Lcom/vungle/sdk/ah$a;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vungle/sdk/ah$a;->a:Lcom/vungle/sdk/ah$a;

    return-object v0
.end method

.method protected final synthetic b(Landroid/os/Parcel;)Lcom/vungle/sdk/ah;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/vungle/sdk/ad;->a(Landroid/os/Parcel;)Lcom/vungle/sdk/ad;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vungle/sdk/ad;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/sdk/ah$b;->a:Lcom/vungle/sdk/ah$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/sdk/ad;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vungle/sdk/ad;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1, p2}, Lcom/vungle/sdk/ah;->writeToParcel(Landroid/os/Parcel;I)V

    .line 48
    return-void
.end method
