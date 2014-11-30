.class final Lcom/aarki/AarkiUserBalance$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aarki/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aarki/AarkiUserBalance;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/aarki/AarkiUserBalance$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/aarki/AarkiUserBalance$Listener;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aarki/AarkiUserBalance$Listener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/aarki/AarkiUserBalance$1;->a:Lcom/aarki/AarkiUserBalance$Listener;

    iput-object p2, p0, Lcom/aarki/AarkiUserBalance$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to process "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aarki/AarkiUserBalance$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/aarki/AarkiUserBalance$1;->a:Lcom/aarki/AarkiUserBalance$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aarki/AarkiUserBalance$1;->a:Lcom/aarki/AarkiUserBalance$Listener;

    sget-object v1, Lcom/aarki/AarkiUserBalance$Status;->ConnectionFailure:Lcom/aarki/AarkiUserBalance$Status;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/aarki/AarkiUserBalance$Listener;->onFinished(Lcom/aarki/AarkiUserBalance$Status;Ljava/lang/Integer;)V

    .line 54
    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/aarki/AarkiUserBalance$Status;->OtherFailure:Lcom/aarki/AarkiUserBalance$Status;

    .line 32
    :try_start_0
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 34
    sget-object v0, Lcom/aarki/AarkiUserBalance$Status;->OK:Lcom/aarki/AarkiUserBalance$Status;

    .line 40
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/aarki/AarkiUserBalance$1;->a:Lcom/aarki/AarkiUserBalance$Listener;

    if-eqz v1, :cond_2

    .line 41
    iget-object v1, p0, Lcom/aarki/AarkiUserBalance$1;->a:Lcom/aarki/AarkiUserBalance$Listener;

    sget-object v2, Lcom/aarki/AarkiUserBalance$Status;->OK:Lcom/aarki/AarkiUserBalance$Status;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/aarki/AarkiUserBalance$Status;->InsufficientFunds:Lcom/aarki/AarkiUserBalance$Status;

    if-ne v0, v2, :cond_5

    :cond_1
    const-string v2, "balance"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-interface {v1, v0, v2}, Lcom/aarki/AarkiUserBalance$Listener;->onFinished(Lcom/aarki/AarkiUserBalance$Status;Ljava/lang/Integer;)V

    .line 45
    :cond_2
    :goto_2
    return-void

    .line 35
    :cond_3
    const-string v2, "INSUFFICIENT_FUNDS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 36
    sget-object v0, Lcom/aarki/AarkiUserBalance$Status;->InsufficientFunds:Lcom/aarki/AarkiUserBalance$Status;

    goto :goto_0

    .line 37
    :cond_4
    const-string v2, "USER_NOT_FOUND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    sget-object v0, Lcom/aarki/AarkiUserBalance$Status;->UserNotFound:Lcom/aarki/AarkiUserBalance$Status;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    goto :goto_2
.end method
