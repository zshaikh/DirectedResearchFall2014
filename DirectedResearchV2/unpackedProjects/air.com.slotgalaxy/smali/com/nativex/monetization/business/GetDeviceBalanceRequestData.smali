.class public Lcom/nativex/monetization/business/GetDeviceBalanceRequestData;
.super Ljava/lang/Object;
.source "GetDeviceBalanceRequestData.java"


# instance fields
.field private session:Lcom/nativex/monetization/business/Session;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Session"
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
.method public getSession()Lcom/nativex/monetization/business/Session;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nativex/monetization/business/GetDeviceBalanceRequestData;->session:Lcom/nativex/monetization/business/Session;

    return-object v0
.end method

.method public setSession(Lcom/nativex/monetization/business/Session;)V
    .locals 0
    .param p1, "session"    # Lcom/nativex/monetization/business/Session;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/nativex/monetization/business/GetDeviceBalanceRequestData;->session:Lcom/nativex/monetization/business/Session;

    .line 38
    return-void
.end method
