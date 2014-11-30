.class public Lv2/com/playhaven/model/PHPurchase;
.super Ljava/lang/Object;
.source "PHPurchase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;,
        Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lv2/com/playhaven/model/PHPurchase;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_QUANTITY:I = 0x1

.field public static final NO_CONTENTVIEW_INTENT:Ljava/lang/String; = "v2.com.playhaven.null"


# instance fields
.field public callback:Ljava/lang/String;

.field public contentview_intent:Ljava/lang/String;

.field public currencyLocale:Ljava/util/Currency;

.field public error:Lv2/com/playhaven/model/PHError;

.field public marketplace:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

.field public name:Ljava/lang/String;

.field public price:D

.field public product:Ljava/lang/String;

.field public quantity:I

.field public receipt:Ljava/lang/String;

.field public resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lv2/com/playhaven/model/PHPurchase$1;

    invoke-direct {v0}, Lv2/com/playhaven/model/PHPurchase$1;-><init>()V

    sput-object v0, Lv2/com/playhaven/model/PHPurchase;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lv2/com/playhaven/model/PHPurchase;->quantity:I

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lv2/com/playhaven/model/PHPurchase;->price:D

    .line 90
    sget-object v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Google:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    iput-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->marketplace:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const-string v4, "null"

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v1, 0x1

    iput v1, p0, Lv2/com/playhaven/model/PHPurchase;->quantity:I

    .line 81
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lv2/com/playhaven/model/PHPurchase;->price:D

    .line 90
    sget-object v1, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Google:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    iput-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->marketplace:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->product:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->product:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->product:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iput-object v3, p0, Lv2/com/playhaven/model/PHPurchase;->product:Ljava/lang/String;

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->name:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->name:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iput-object v3, p0, Lv2/com/playhaven/model/PHPurchase;->name:Ljava/lang/String;

    .line 177
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->receipt:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->receipt:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->receipt:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    iput-object v3, p0, Lv2/com/playhaven/model/PHPurchase;->receipt:Ljava/lang/String;

    .line 183
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->callback:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->callback:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->callback:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    iput-object v3, p0, Lv2/com/playhaven/model/PHPurchase;->callback:Ljava/lang/String;

    .line 188
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->tag:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->tag:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->tag:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    iput-object v3, p0, Lv2/com/playhaven/model/PHPurchase;->tag:Ljava/lang/String;

    .line 193
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "resCandidate":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v3

    :goto_0
    iput-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    .line 197
    iget-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    const-string v2, "null"

    invoke-virtual {v1, v4}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 198
    iput-object v3, p0, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    .line 199
    :cond_5
    return-void

    .line 194
    :cond_6
    invoke-static {v0}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->valueOf(Ljava/lang/String;)Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    move-result-object v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lv2/com/playhaven/model/PHPurchase;->quantity:I

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lv2/com/playhaven/model/PHPurchase;->price:D

    .line 90
    sget-object v0, Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;->Google:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    iput-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->marketplace:Lv2/com/playhaven/model/PHPurchase$PHMarketplaceOrigin;

    .line 100
    iput-object p1, p0, Lv2/com/playhaven/model/PHPurchase;->tag:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->error:Lv2/com/playhaven/model/PHError;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportAndroidBillingResult(Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;Landroid/content/Context;)V
    .locals 4
    .param p1, "resolution"    # Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    iput-object p1, p0, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    .line 134
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v1, "message":Landroid/os/Bundle;
    sget-object v3, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->Purchase:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;

    invoke-virtual {v3}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEventArgument;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "purchase_key":Ljava/lang/String;
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 140
    sget-object v3, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->PurchaseResolved:Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;

    invoke-virtual {v3}, Lv2/com/playhaven/interstitial/requestbridge/bridges/ContentRequestToInterstitialBridge$InterstitialEvent;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "event":Ljava/lang/String;
    iget-object v3, p0, Lv2/com/playhaven/model/PHPurchase;->tag:Ljava/lang/String;

    invoke-static {v3, v0, v1, p2}, Lv2/com/playhaven/interstitial/requestbridge/BridgeManager;->sendMessageFromRequester(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const-string v1, "null"

    .line 206
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->product:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->receipt:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "null"

    move-object v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->callback:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "null"

    move-object v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->tag:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "null"

    move-object v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    if-nez v0, :cond_5

    const-string v0, "null"

    move-object v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->product:Ljava/lang/String;

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->name:Ljava/lang/String;

    goto :goto_1

    .line 208
    :cond_2
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->receipt:Ljava/lang/String;

    goto :goto_2

    .line 209
    :cond_3
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->callback:Ljava/lang/String;

    goto :goto_3

    .line 210
    :cond_4
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->tag:Ljava/lang/String;

    goto :goto_4

    .line 211
    :cond_5
    iget-object v0, p0, Lv2/com/playhaven/model/PHPurchase;->resolution:Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;

    invoke-virtual {v0}, Lv2/com/playhaven/model/PHPurchase$AndroidBillingResult;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
