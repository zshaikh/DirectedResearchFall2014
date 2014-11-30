.class public Lcom/nativex/monetization/business/CacheErrorData;
.super Ljava/lang/Object;
.source "CacheErrorData.java"


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Code"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nativex/monetization/business/CacheErrorData;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nativex/monetization/business/CacheErrorData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/nativex/monetization/business/CacheErrorData;->code:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/nativex/monetization/business/CacheErrorData;->url:Ljava/lang/String;

    .line 20
    return-void
.end method
