.class public Lcom/nativex/monetization/business/EndSessionRequestData;
.super Ljava/lang/Object;
.source "EndSessionRequestData.java"


# instance fields
.field private sessionID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nativex/monetization/business/EndSessionRequestData;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/nativex/monetization/business/EndSessionRequestData;->sessionID:Ljava/lang/String;

    .line 38
    return-void
.end method
