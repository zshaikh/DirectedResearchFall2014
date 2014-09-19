.class Lcom/fusepowered/m1/android/InterstitialAd;
.super Lcom/fusepowered/m1/android/CachedAd;
.source "InterstitialAd.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fusepowered/m1/android/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field static final EXTRA_AD_URL:Ljava/lang/String; = "EXTRA_AD_URL"

.field static final EXTRA_CONTENT:Ljava/lang/String; = "EXTRA_CONTENT"

.field static final serialVersionUID:J = 0x47973e3dff4c4b9dL


# instance fields
.field adUrl:Ljava/lang/String;

.field content:Ljava/lang/String;

.field mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/fusepowered/m1/android/InterstitialAd$1;

    invoke-direct {v0}, Lcom/fusepowered/m1/android/InterstitialAd$1;-><init>()V

    sput-object v0, Lcom/fusepowered/m1/android/InterstitialAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fusepowered/m1/android/CachedAd;-><init>()V

    .line 27
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/CachedAd;-><init>(Landroid/os/Parcel;)V

    .line 36
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m1/android/InterstitialAd;->content:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m1/android/InterstitialAd;->adUrl:Ljava/lang/String;

    .line 38
    const-class v1, Lcom/fusepowered/m1/android/HttpMMHeaders;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/HttpMMHeaders;

    iput-object v1, p0, Lcom/fusepowered/m1/android/InterstitialAd;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 42
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getExpandExtrasIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "adImplInternalId"

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-direct {v1}, Lcom/fusepowered/m1/android/OverlaySettings;-><init>()V

    .line 99
    .local v1, settings:Lcom/fusepowered/m1/android/OverlaySettings;
    iput-wide p2, v1, Lcom/fusepowered/m1/android/OverlaySettings;->creatorAdImplId:J

    .line 100
    iget-object v2, p0, Lcom/fusepowered/m1/android/InterstitialAd;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/fusepowered/m1/android/OverlaySettings;->content:Ljava/lang/String;

    .line 101
    iget-object v2, p0, Lcom/fusepowered/m1/android/InterstitialAd;->adUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/fusepowered/m1/android/OverlaySettings;->adUrl:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcom/fusepowered/m1/android/InterstitialAd;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    invoke-virtual {v1, v2}, Lcom/fusepowered/m1/android/OverlaySettings;->setWebMMHeaders(Lcom/fusepowered/m1/android/HttpMMHeaders;)V

    .line 103
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/fusepowered/m1/android/OverlaySettings;->isFromInterstitial:Z

    .line 104
    const-string v2, "settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 105
    const-string v2, "internalId"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 106
    return-object v0
.end method


# virtual methods
.method canShow(Landroid/content/Context;Lcom/fusepowered/m1/android/MMAdImpl;Z)Z
    .locals 6
    .parameter "context"
    .parameter "adImpl"
    .parameter "checkDeferredViewStart"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    if-eqz p3, :cond_1

    .line 83
    iget-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->content:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->adUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->adUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/fusepowered/m1/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/fusepowered/m1/android/HandShake;

    move-result-object v0

    iget-object v1, p2, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    iget-wide v2, p0, Lcom/fusepowered/m1/android/InterstitialAd;->deferredViewStart:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/m1/android/HandShake;->canDisplayCachedAd(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    .line 86
    :goto_0
    return v0

    :cond_0
    move v0, v4

    .line 83
    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->content:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->adUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->adUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method download(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x2

    return v0
.end method

.method getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "Interstitial"

    return-object v0
.end method

.method isOnDisk(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/CachedAd;->readExternal(Ljava/io/ObjectInput;)V

    .line 146
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->content:Ljava/lang/String;

    .line 147
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->adUrl:Ljava/lang/String;

    .line 148
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/HttpMMHeaders;

    iput-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    .line 149
    return-void
.end method

.method saveAssets(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method show(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "adImplInternalId"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/fusepowered/m1/android/InterstitialAd;->getExpandExtrasIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fusepowered/m1/android/Utils$IntentUtils;->startAdViewOverlayActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/CachedAd;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 155
    iget-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->adUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lcom/fusepowered/m1/android/CachedAd;->writeToParcel(Landroid/os/Parcel;I)V

    .line 121
    iget-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->adUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/fusepowered/m1/android/InterstitialAd;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 124
    return-void
.end method
