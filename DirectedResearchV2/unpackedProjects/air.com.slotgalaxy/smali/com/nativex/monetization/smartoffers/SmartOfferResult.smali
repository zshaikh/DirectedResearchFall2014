.class public Lcom/nativex/monetization/smartoffers/SmartOfferResult;
.super Ljava/lang/Object;
.source "SmartOfferResult.java"


# instance fields
.field private firstTimeUTC:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FirstUTC"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field private value:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Value"
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
.method public getFirstTimeUTC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nativex/monetization/smartoffers/SmartOfferResult;->firstTimeUTC:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nativex/monetization/smartoffers/SmartOfferResult;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nativex/monetization/smartoffers/SmartOfferResult;->value:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setFirstTimeUTC(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstTimeUTC"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/nativex/monetization/smartoffers/SmartOfferResult;->firstTimeUTC:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/nativex/monetization/smartoffers/SmartOfferResult;->id:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setValue(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/nativex/monetization/smartoffers/SmartOfferResult;->value:Ljava/lang/Boolean;

    .line 32
    return-void
.end method
