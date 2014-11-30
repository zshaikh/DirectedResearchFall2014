.class public Lcom/playhaven/src/publishersdk/content/PHPurchase;
.super Ljava/lang/Object;
.source "PHPurchase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/playhaven/src/publishersdk/content/PHPurchase;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_CONTENTVIEW_INTENT:Ljava/lang/String; = "com.playhaven.null"


# instance fields
.field public callback:Ljava/lang/String;

.field public contentview_intent:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public product:Ljava/lang/String;

.field public quantity:I

.field public receipt:Ljava/lang/String;

.field public resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$1;

    invoke-direct {v0}, Lcom/playhaven/src/publishersdk/content/PHPurchase$1;-><init>()V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "com.playhaven.null"

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->contentview_intent:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const-string v3, "null"

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->name:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->name:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->name:Ljava/lang/String;

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->quantity:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->receipt:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->receipt:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->receipt:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->receipt:Ljava/lang/String;

    .line 114
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->callback:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->callback:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->callback:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->callback:Ljava/lang/String;

    .line 119
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->contentview_intent:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->contentview_intent:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->contentview_intent:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iput-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->contentview_intent:Ljava/lang/String;

    .line 123
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentview_intent"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->contentview_intent:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public reportResolution(Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;Landroid/app/Activity;)V
    .locals 3
    .param p1, "resolution"    # Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;
    .param p2, "context"    # Landroid/app/Activity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->resolution:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 70
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->contentview_intent:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "didPurchase":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v1, "metadata":Landroid/os/Bundle;
    sget-object v2, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->Purchase:Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;

    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$Detail;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 75
    const-string v2, "com.playhaven.md"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const-string v1, "null"

    .line 130
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->quantity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->receipt:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "null"

    move-object v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->callback:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "null"

    move-object v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->contentview_intent:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "null"

    move-object v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->product:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->name:Ljava/lang/String;

    goto :goto_1

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->receipt:Ljava/lang/String;

    goto :goto_2

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->callback:Ljava/lang/String;

    goto :goto_3

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase;->contentview_intent:Ljava/lang/String;

    goto :goto_4
.end method
