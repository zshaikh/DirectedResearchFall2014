.class public Lcom/nativex/monetization/smartoffers/SmartOffer;
.super Ljava/lang/Object;
.source "SmartOffer.java"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field private value:Ljava/lang/String;
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
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nativex/monetization/smartoffers/SmartOffer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nativex/monetization/smartoffers/SmartOffer;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/nativex/monetization/smartoffers/SmartOffer;->id:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/nativex/monetization/smartoffers/SmartOffer;->value:Ljava/lang/String;

    .line 29
    return-void
.end method
