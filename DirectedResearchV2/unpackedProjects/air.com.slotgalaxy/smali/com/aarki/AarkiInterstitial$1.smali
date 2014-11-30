.class final Lcom/aarki/AarkiInterstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aarki/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aarki/AarkiInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/aarki/AarkiInterstitial$Listener;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aarki/AarkiInterstitial$Listener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/aarki/AarkiInterstitial$1;->a:Lcom/aarki/AarkiInterstitial$Listener;

    iput-object p2, p0, Lcom/aarki/AarkiInterstitial$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to process "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aarki/AarkiInterstitial$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/aarki/AarkiInterstitial$1;->a:Lcom/aarki/AarkiInterstitial$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aarki/AarkiInterstitial$1;->a:Lcom/aarki/AarkiInterstitial$Listener;

    sget-object v1, Lcom/aarki/Aarki$Status;->NotAvailable:Lcom/aarki/Aarki$Status;

    invoke-interface {v0, v1}, Lcom/aarki/AarkiInterstitial$Listener;->onFinished(Lcom/aarki/Aarki$Status;)V

    .line 80
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/aarki/AarkiInterstitial;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 81
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 43
    :try_start_0
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    sget-object v0, Lcom/aarki/Aarki$Status;->OK:Lcom/aarki/Aarki$Status;

    .line 47
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aarki/AarkiInterstitial;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interstitial URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/aarki/AarkiInterstitial;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    new-instance v1, Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lcom/aarki/AarkiInterstitial;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 54
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/aarki/AarkiInterstitial;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/aarki/AarkiInterstitial$1;->a:Lcom/aarki/AarkiInterstitial$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aarki/AarkiInterstitial$1;->a:Lcom/aarki/AarkiInterstitial$Listener;

    invoke-interface {v1, v0}, Lcom/aarki/AarkiInterstitial$Listener;->onFinished(Lcom/aarki/Aarki$Status;)V

    .line 71
    :cond_0
    :goto_1
    return-void

    .line 56
    :cond_1
    sget-object v0, Lcom/aarki/Aarki$Status;->NotAvailable:Lcom/aarki/Aarki$Status;

    .line 59
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/aarki/AarkiInterstitial;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/aarki/AarkiInterstitial;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 69
    iget-object v0, p0, Lcom/aarki/AarkiInterstitial$1;->a:Lcom/aarki/AarkiInterstitial$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aarki/AarkiInterstitial$1;->a:Lcom/aarki/AarkiInterstitial$Listener;

    sget-object v1, Lcom/aarki/Aarki$Status;->NotAvailable:Lcom/aarki/Aarki$Status;

    invoke-interface {v0, v1}, Lcom/aarki/AarkiInterstitial$Listener;->onFinished(Lcom/aarki/Aarki$Status;)V

    goto :goto_1
.end method
