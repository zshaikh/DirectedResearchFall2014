.class public Lcom/nativex/monetization/business/RichMediaResponseData;
.super Ljava/lang/Object;
.source "RichMediaResponseData.java"


# instance fields
.field private CDNs:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CDNs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private base64HtmlContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Content"
    .end annotation
.end field

.field private offerIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OfferIds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private viewTimeOut:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ViewTimeout"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase64HtmlContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nativex/monetization/business/RichMediaResponseData;->base64HtmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public getCDNs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nativex/monetization/business/RichMediaResponseData;->CDNs:Ljava/util/List;

    return-object v0
.end method

.method public getOfferIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nativex/monetization/business/RichMediaResponseData;->offerIds:Ljava/util/List;

    return-object v0
.end method

.method public getViewTimeOut()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/nativex/monetization/business/RichMediaResponseData;->viewTimeOut:J

    return-wide v0
.end method

.method public setBase64HtmlContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "base64HtmlContent"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/nativex/monetization/business/RichMediaResponseData;->base64HtmlContent:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setCDNs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "cDNs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nativex/monetization/business/RichMediaResponseData;->CDNs:Ljava/util/List;

    .line 28
    return-void
.end method

.method public setOfferIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "offerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nativex/monetization/business/RichMediaResponseData;->offerIds:Ljava/util/List;

    .line 36
    return-void
.end method

.method public setViewTimeOut(J)V
    .locals 0
    .param p1, "viewTimeOut"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/nativex/monetization/business/RichMediaResponseData;->viewTimeOut:J

    .line 44
    return-void
.end method
