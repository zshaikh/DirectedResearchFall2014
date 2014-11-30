.class public Lcom/nativex/monetization/ApplicationInputs;
.super Ljava/lang/Object;
.source "ApplicationInputs.java"


# instance fields
.field private appId:I

.field private applicationName:Ljava/lang/String;

.field private language:Lcom/nativex/monetization/enums/Language;

.field private packageName:Ljava/lang/String;

.field private publisherUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v1, p0, Lcom/nativex/monetization/ApplicationInputs;->applicationName:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v1, p0, Lcom/nativex/monetization/ApplicationInputs;->publisherUserId:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v1, p0, Lcom/nativex/monetization/ApplicationInputs;->packageName:Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/nativex/monetization/enums/Language;->ENGLISH:Lcom/nativex/monetization/enums/Language;

    iput-object v0, p0, Lcom/nativex/monetization/ApplicationInputs;->language:Lcom/nativex/monetization/enums/Language;

    return-void
.end method


# virtual methods
.method public getAppId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/nativex/monetization/ApplicationInputs;->appId:I

    return v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nativex/monetization/ApplicationInputs;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Lcom/nativex/monetization/enums/Language;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nativex/monetization/ApplicationInputs;->language:Lcom/nativex/monetization/enums/Language;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nativex/monetization/ApplicationInputs;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nativex/monetization/ApplicationInputs;->publisherUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(I)V
    .locals 0
    .param p1, "appId"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/nativex/monetization/ApplicationInputs;->appId:I

    .line 93
    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/nativex/monetization/ApplicationInputs;->applicationName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setLanguage(Lcom/nativex/monetization/enums/Language;)V
    .locals 0
    .param p1, "language"    # Lcom/nativex/monetization/enums/Language;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/nativex/monetization/ApplicationInputs;->language:Lcom/nativex/monetization/enums/Language;

    .line 153
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/nativex/monetization/ApplicationInputs;->packageName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setPublisherUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisherUserId"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/nativex/monetization/ApplicationInputs;->publisherUserId:Ljava/lang/String;

    .line 113
    return-void
.end method
